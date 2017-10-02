[_tb_system_call storage=system/_Achievement.ks]

[tb_start_tyrano_code]
[hidemenubutton]
[_tb_end_tyrano_code]

[cm  ]
[tb_hide_message_window  ]
[bg  time="0"  method="crossfade"  storage="achievementBG.png"  ]
[tb_start_tyrano_code]
[macro name="end1"]
[if exp="sf.END1!=1"]
[tb_ptext_show  x="298"  y="101"  size="40"  color="0xffffff"  time="1000"  text="- LOCKED ENDING -"  anim="false"  face="Tahoma"  ]
[else]
[tb_ptext_show  x="298"  y="101"  size="40"  color="0xffffff"  time="1000"  text="- END1 : GOOD ENDING -"  anim="false"  face="Tahoma"  ]
[endif]
[endmacro]

[macro name="end2"]
[if exp="sf.END2!=1"]
[tb_ptext_show  x="298"  y="151"  size="40"  color="0xffffff"  time="1000"  text="- LOCKED ENDING -"  anim="false"  face="Tahoma"  ]
[else]
[tb_ptext_show  x="298"  y="151"  size="40"  color="0xffffff"  time="1000"  text="- END2 : BAD ENDING -"  anim="false"  face="Tahoma"  ]
[endif]
[endmacro]

[end1]
[end2]
[_tb_end_tyrano_code]

[button  storage="Achievement.ks"  target="*TITLE"  graphic="menu_button_close.png"  width="64"  height="64"  x="884"  y="0"  _clickable_img=""  ]
[s  ]
*TITLE

[cm  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="title_screen.ks"  target=""  ]
[s  ]
