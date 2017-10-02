function object(o)
 {
  var f = object.f, i, len, n, prop;
  f.prototype = o;
  n = new f;
  for (i=1, len=arguments.length; i<len; ++i)
      for (prop in arguments[i])
          n[prop] = arguments[i][prop];
  return n;
 }

object.f = function(){};
var tyrano ={};
tyrano.plugin ={};

tyrano.core =
 {
  base:null,
  options:
   {     
    width:0,
    height:0,
    onComplete:function(){}   
   }, 
  status:{loaded_plugin:0},
  array_plugins:["kag"], //Load plugin list
  init:
   function(options)
    {    
     var that  = this;   
     this.base = object(tyrano.base);
     this.base.init(this);
     this.config = window.config;   
     var array_plugins = this.array_plugins;   
     //Load the script and create the object
     this.loadPlugins
	       (
		    array_plugins,
			function(array_src)
			 {that.loadModule(array_src);}
		   );
        
    },
  //Plug-in load processing
  loadPlugins:
   function(array_src, call_back)
    {    
     var that = this;
     var count_src = 0;   
     for (var i = 0; i < array_src.length; i++)
		 {   
          $.getScript
		   (
		    "./tyrano/plugins/"+array_src[i]+"/"+array_src[i]+".js",
			function()
			 {   
              count_src++;  
              if (count_src == array_src.length)
			     {
                  if (call_back)
				     {call_back(array_src);}  
                 }
             }
		   );
            
         }
        
    },
  loadModule:
   function(array_src)
    {
     var that = this;
     for (var i = 0; i < array_src.length; i++)
	     {
          this[array_src[i]] = object(tyrano.plugin[array_src[i]]);
          //Delegate operation
          this[array_src[i]].tyrano = this;
          (
		   function()
		    {    
             var _name = array_src[i];  
             that.loadPluginModules
			  (
			   _name,
			   that[_name].options.modules,
               function()
			    {
                 that[_name].init();
                 that.completeLoad(_name);        
                }
			  );
            }
		  )();
            
         }
          
    },
  //Read related files attached to plugins
  loadPluginModules:
   function(plugin_name,array_plugin_modules,call_back)
    {    
     var that = this;   
     var count_src = 0;   
     //console.log(array_plugin_modules);
     //If there is no module to load, complete
     if (array_plugin_modules.length === 0)
	    {call_back(array_plugin_modules);}
     for (var i=0; i<array_plugin_modules.length; i++)
	     {   
          $.getScript
		   (
		    "./tyrano/plugins/"+plugin_name+"/"+plugin_name+"."+array_plugin_modules[i]+".js",
			function()
			 {   
              count_src++;  
              if (count_src == array_plugin_modules.length)
			     {
                  if (call_back)
				     {call_back(array_plugin_modules);}
                 }
             }
		   );
            
         }
        
    },
  completeLoad:function(plugin_name)
   {     
    //console.log(plugin_name);  
    //When it is executed for the number of plugins to be read, it goes to the build process
    this.status.loaded_plugin++;    
    //console.log(this.status.loaded_plugin);    
    if (this.status.loaded_plugin === this.array_plugins.length)
	   {this.build();}       
   }, 
  //ローディング完了、システムを組み上げていきます
  build:
   function(){},
  get:
   function(mark)
    {return $(mark);},
  test:
   function()
    {
     //alert("tyrano test");
    }
 };

var TYRANO    = object(tyrano.core);
window.TYRANO = TYRANO;

if (!('console' in window))
   {
    window.console = {};
    window.console.log = function(str){return str;};
   }
    
$(function()
   {
    //It seems to build a screen for Novell
	//yunagi.init();
	//DOM Initialization after completion of construction
	//yunagi.init_loaded();
	TYRANO.init(); 
   }
 );