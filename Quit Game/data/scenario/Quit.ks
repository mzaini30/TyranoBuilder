[_tb_system_call storage=system/_Quit.ks]

[tb_hide_message_window  ]
[tb_image_show  time="0"  storage="default/bgSceneQuit.png"  width="640"  height="480"  name="img_0"  ]
[button  storage="Quit.ks"  target="*Quit"  graphic="YES.png"  width="100"  height="40"  x="162"  y="233"  _clickable_img=""  name="img_1"  ]
[button  storage="Quit.ks"  target="*no"  graphic="NO.png"  width="100"  height="40"  x="390"  y="229"  _clickable_img=""  ]
[s  ]
*Quit

[tb_start_tyrano_code]
[close ask=no]
[_tb_end_tyrano_code]

[s  ]
*no

[tb_show_message_window  ]
[tb_image_hide  time="0"  ]
[cm  ]
[return  ]
[s  ]
