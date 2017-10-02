[_tb_system_call storage=system/_title_screen.ks]

[tb_hide_message_window  ]
[bg  storage="title.jpg"  ]
*title

[glink  text="New&nbsp;Game"  x="600"  y="370"  target="*start"  ]
[glink  text="Load&nbsp;Game"  x="600"  y="470"  target="*load"  ]
[glink  color="black"  storage="title_screen.ks"  size="20"  text="CG&nbsp;Gallery"  x="589"  y="287"  width=""  height=""  _clickable_img=""  target="*CG"  ]
[s  ]
*start

[cm  ]
[jump  storage="scene1.ks"  target=""  ]
*load

[showload]

[jump  target="*title"  storage=""  ]
*CG

[jump  storage="CG.ks"  target=""  ]
