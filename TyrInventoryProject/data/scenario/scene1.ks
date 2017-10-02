[_tb_system_call storage=system/_scene1.ks]

[tb_start_tyrano_code]
[eval exp="f.gem=1"]
[eval exp="f.loli=1"]
[eval exp="f.check=0"]
[_tb_end_tyrano_code]

[bg  storage="room.jpg"  time="1000"  ]
[button  storage="Inventory.ks"  target=""  graphic="BtnInventory.png"  width="100"  height="37"  x="540"  y="441"  _clickable_img="fix"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#8oni
Showing items that can be clicked [p]
[_tb_end_tyrano_code]

*ShowItems

[tb_start_tyrano_code]
[if exp="f.gem==1"]
[image storage="default/Gem.png" layer=1 page=fore visible=true x="41"  y="124" ]
[locate x=41 y=124]
[clickable width=150 height=150 target=*RemoveGem]
[else]
[endif]

[macro name="loli"]
[if exp="f.loli==1"]
[image storage="default/Lollipop.png" layer=2 page=fore visible=true x="247"  y="151" ]
[locate x=247 y=151]
[clickable width=150 height=150 target=*RemoveLoli]
[else]
[endif]
[endmacro]

[if exp="f.check==2"]
[jump storage=scene1.ks target=*MoveOn]
[else]
[gem] [loli]
[endif]
[_tb_end_tyrano_code]

[s  ]
*RemoveGem

[tb_start_tyrano_code]
[eval exp="f.gem=0"]
[eval exp="f.check+=1"]
[freeimage layer=1 page=fore]

I move the gem into inventory [p]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ShowItems"  ]
*RemoveLoli

[tb_start_tyrano_code]
[eval exp="f.loli=0"]
[eval exp="f.check+=1"]
[freeimage layer=2 page=fore]

I move the lollipop into inventory [p]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ShowItems"  ]
[s  ]
*MoveOn

[tb_start_tyrano_code]
Move on to another place since there is no more items [p]
[_tb_end_tyrano_code]

[s  ]
