[_tb_system_call storage=system/_scene1.ks]

[cm  ]
[bg  storage="room.jpg"  time="1000"  ]
[tb_show_message_window  ]
Hello.[p]
This is a new game project.[p]


[glink  color="black"  storage="scene1.ks"  size="20"  text="END1"  x="505"  y="148"  width=""  height=""  _clickable_img=""  target="*END1"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="END2"  x="508"  y="202"  width=""  height=""  _clickable_img=""  target="*END2"  ]
[s  ]
*END1

[tb_start_tyrano_code]
[eval exp="sf.END1=1"]
[_tb_end_tyrano_code]

[s  ]
*END2

[tb_start_tyrano_code]
[eval exp="sf.END2=1"]
[_tb_end_tyrano_code]

[s  ]
