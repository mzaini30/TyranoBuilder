[_tb_system_call storage=system/_scene1.ks]

[tb_start_tyrano_code]
[eval exp="f.star=3"]
[_tb_end_tyrano_code]

[cm  ]
[bg  storage="room.jpg"  time="1000"  ]
[tb_start_tyrano_code]
[macro name="LeftStar"]
[if exp="f.star==1"]
[freeimage layer=0 page=fore]
[layopt layer=0 visible=true]
[ptext layer=0 page=fore text=❤ size=30 x=10 y=10 color=blue]
[elsif exp="f.star==2"]
[freeimage layer=0 page=fore]
[layopt layer=0 visible=true]
[ptext layer=0 page=fore text=❤❤ size=30 x=10 y=10 color=blue]
[else]
[freeimage layer=0 page=fore]
[layopt layer=0 visible=true]
[ptext layer=0 page=fore text=❤❤❤ size=30 x=10 y=10 color=blue]
[endif]
[endmacro]

[LeftStar]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
Choose[p]


[glink  color="black"  storage="scene1.ks"  size="20"  text="+1"  target="*Increase"  x="278"  y="144"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="-1"  x="277"  y="206"  width=""  height=""  _clickable_img=""  target="*Decrease"  ]
[s  ]
*Increase

[tb_start_tyrano_code]
[eval exp="f.star+=1"]
[LeftStar]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*Move"  ]
[s  ]
*Decrease

[tb_start_tyrano_code]
[eval exp="f.star-=1"]
[LeftStar]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*Move"  ]
[s  ]
*Move

Move to next scene to check if HUD still there or not[p]


[jump  storage="M.ks"  target=""  ]
[s  ]
