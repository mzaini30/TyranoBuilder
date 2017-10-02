
tyrano.base =
 {   
  //Module to be read
  tyrano :null,
  modules:[],
  options:{},
  init:
   function(tyrano)
    {this.tyrano = tyrano;},
  setBaseSize:
   function(width,height)
    {this.tyrano.get(".tyrano_base").css("width",width).css("height",height).css("background-color","black");},
  //Make screen size perfect
  fitBaseSize:
   function(width,height)
    {  
     var view_width = $.getViewPort().width;
     var view_height = $.getViewPort().height;   
     var width_f = view_width / width ;
     var height_f = view_height / height;   
     var scale_f = 0;   
     var space_width = 0;   
     var screen_ratio = this.tyrano.kag.config.ScreenRatio;
     //When you want to fix the ratio, it becomes as follows
     if (screen_ratio =="fix")
	    {
         if (width_f > height_f)
		    {scale_f = height_f;}
		 else
		    {scale_f = width_f;}
         this.tyrano.kag.tmp.base_scale = scale_f;
         setTimeout
		  (
		   function()
 		    {    
             $(".tyrano_base").css("transform", "scale(" + scale_f + ") ");
             if (parseInt(view_width) < parseInt(width))
				{
                 if (scale_f < 1)
					{window.scrollTo(width, height);}
                }
            },
		   100
		  );
        }
	 else
		if (screen_ratio =="fit")
		   { 
            //Automatically adjusted according to screen size
            setTimeout
			 (
			  function()
			   {
                $(".tyrano_base").css("transform", "scaleX("+width_f+") scaleY("+height_f+")");
                window.scrollTo(width, height);
			   },
			  100
			 );
            
		   }
		else
		   {
			//Screen size fixed
		   }
	},
  test:
   function()
    {
	 //alert("tyrano test");
    } 
 };
