tyrano.plugin.kag.tag.camera={vital:[],pm:{time:1E3,from_x:"0",from_y:"0",from_zoom:"1",from_rotate:"0",x:"",y:"",zoom:"",rotate:"",layer:"layer_camera",wait:"true",ease_type:"ease"},start:function(pm){var that=this;if(this.kag.config.useCamera=="false"){$.alert("[camera]\u30bf\u30b0\u30a8\u30e9\u30fc\u3002\u30ab\u30e1\u30e9\u306e\u4f7f\u7528\u3092\u8a31\u53ef\u3057\u3066\u4e0b\u3055\u3044\u3002Config.tjs\u306euseCamera\u3092true\u306b\u3059\u308b\u5fc5\u8981\u304c\u3042\u308a\u307e\u3059");return false}var duration=
pm.time+"ms";if(typeof this.kag.stat.current_camera[pm.layer]=="undefined")this.kag.stat.current_camera[pm.layer]={x:"0",y:"0",scale:"1",rotate:"0"};var to_camera=$.extend(true,{},this.kag.stat.current_camera[pm.layer]);if(pm.x!="")to_camera.x="*"+parseInt(pm.x)*-1+"px";if(pm.y!="")to_camera.y="*"+parseInt(pm.y)*1+"px";if(pm.zoom!="")to_camera.scale=pm.zoom;if(pm.rotate!="")to_camera.rotate=pm.rotate+"deg";if(pm.from_x!="0"||pm.from_y!="0"||pm.from_zoom!="1"||pm.from_rotate!="0")this.kag.stat.current_camera[pm.layer]=
{x:"*"+parseInt(pm.from_x)*-1+"px",y:"*"+parseInt(pm.from_y)*1+"px",scale:pm.from_zoom,rotate:pm.from_rotate+"deg"};var flag_complete=false;that.kag.stat.is_move_camera=true;var a3d_define={frames:{"0%":{trans:this.kag.stat.current_camera[pm.layer]},"100%":{trans:to_camera}},config:{duration:duration,state:"running",easing:pm.ease_type},complete:function(){if(pm.wait=="true"&&flag_complete==false){flag_complete=true;setTimeout(function(){that.kag.ftag.nextOrder()},300)}else if(that.kag.stat.is_wait_camera==
true){that.kag.stat.is_wait_camera=false;that.kag.ftag.nextOrder()}that.kag.stat.is_move_camera=false}};this.kag.stat.current_camera[pm.layer]=to_camera;if(pm.wait=="false")that.kag.ftag.nextOrder();if(pm.layer=="layer_camera"){$(".layer_camera").css("-webkit-transform-origin","center center");$(".layer_camera").a3d(a3d_define);this.kag.stat.current_camera_layer=""}else{$("."+pm.layer+"_fore").css("-webkit-transform-origin","center center");$("."+pm.layer+"_fore").a3d(a3d_define);this.kag.stat.current_camera_layer=
pm.layer}},play:function(obj,cb){}};
tyrano.plugin.kag.tag.reset_camera={vital:[],pm:{time:1E3,wait:"true",ease_type:"ease",layer:"layer_camera"},start:function(pm){var that=this;var duration=pm.time+"ms";var to_scale=1;var to_camera={x:"*0px",y:"*0px",scale:"1",rotate:"0deg"};var flag_complete=false;that.kag.stat.is_move_camera=true;var a3d_define={frames:{"0%":{trans:this.kag.stat.current_camera[pm.layer]},"100%":{trans:to_camera}},config:{duration:duration,state:"running",easing:pm.ease_type},complete:function(){if(pm.wait=="true"&&
flag_complete==false){flag_complete=true;that.kag.ftag.nextOrder()}else if(that.kag.stat.is_wait_camera==true){that.kag.stat.is_wait_camera=false;that.kag.ftag.nextOrder()}$("."+pm.layer).css({"-animation-name":"","-animation-duration":"","-animation-play-state":"","-animation-delay":"","-animation-iteration-count":"","-animation-direction":"","-animation-fill-mode":"","-animation-timing-function":""});that.kag.stat.is_move_camera=false}};delete this.kag.stat.current_camera[pm.layer];if(pm.wait==
"false")that.kag.ftag.nextOrder();if(pm.layer=="layer_camera"){$(".layer_camera").css("-webkit-transform-origin","center center");$(".layer_camera").a3d(a3d_define);this.kag.stat.current_camera_layer=""}else{$("."+pm.layer+"_fore").css("-webkit-transform-origin","center center");$("."+pm.layer+"_fore").a3d(a3d_define);this.kag.stat.current_camera_layer=""}},play:function(obj,cb){}};
tyrano.plugin.kag.tag.wait_camera={start:function(pm){if(this.kag.stat.is_move_camera==true)this.kag.stat.is_wait_camera=true;else this.kag.ftag.nextOrder()}};