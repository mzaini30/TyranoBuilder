[_tb_system_call storage=system/_Inventory.ks]

[cm  ]
[tb_hide_message_window  ]
[button  storage="Inventory.ks"  target="*Return"  graphic="BtnClose.png"  width="100"  height="100"  x="537"  y="-4"  _clickable_img=""  ]
[tb_start_tyrano_code]
[macro name="sgem"]
[if exp="f.gem==0"]
[image storage="default/Gem.png" layer=3 page=fore visible=true x="41"  y="124" ]
[else]
[endif]
[endmacro]

[macro name="sloli"]
[if exp="f.loli==0"]
[image storage="default/Lollipop.png" layer=3 page=fore visible=true x="247"  y="151" ]
[else]
[endif]
[endmacro]

[image storage="default/Inventory_Screen.png" layer=3 page=fore visible=true x="0"  y="0" width="640" height="480"]
[sloli]
[sgem]
[_tb_end_tyrano_code]

[s  ]
*Return

[cm  ]
[tb_start_tyrano_code]
[freeimage layer=3 page=fore]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[return  ]
[s  ]
