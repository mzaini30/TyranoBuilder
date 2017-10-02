[_tb_system_call storage=system/_afterfight.ks]

*afterfight1

[cm  ]
[bg  time="3000"  method="crossfade"  storage="rpg/rpgbg14.jpg"  ]
[iscript]
$(".message_outer").css("z-index",10)
$(".1_fore").css("z-index",1)
[endscript]

[tb_show_message_window  ]
[chara_mod  name="faces"  time="600"  storage="chara/9/rpgromi1.png"  ]
[chara_show  name="faces"  time="5"  wait="true"  left="24"  top="357"  width=""  height=""  reflect="false"  ]
[chara_show  name="rpgairi"  layer="1"  time="1000"  wait="false"  left="50"  top="117"  width="190"  height="462"  reflect="false"  ]
[chara_show  name="rpguemura"  layer="1"  time="1000"  wait="false"  left="173"  top="113"  width="190"  height="462"  reflect="false"  ]
[chara_show  name="rpgkanon"  layer="1"  time="1000"  wait="false"  left="754"  top="112"  width="190"  height="462"  reflect="false"  ]
[chara_show  name="rpgkayoko"  layer="1"  time="1000"  wait="false"  left="642"  top="116"  width="190"  height="462"  reflect="false"  ]
[chara_show  name="rpgromi"  layer="1"  time="1000"  wait="false"  left="541"  top="118"  width="190"  height="462"  reflect="false"  ]
[chara_show  name="rpgsusumu"  layer="1"  time="1000"  wait="true"  left="351"  top="119"  width="190"  height="462"  reflect="false"  ]
Bravo ![p]


[chara_mod  name="faces"  time="600"  storage="chara/9/rpgkayoko1.png"  ]
You're so awesome, but don't forget to credit ODBear Studios if you use this script.[p]


[chara_mod  name="faces"  time="100"  storage="chara/9/vide.png"  ]
[chara_hide  pos_mode="false"  name="rpgairi"  time="1000"  wait="false"  layer="1"  ]
[chara_hide  pos_mode="false"  name="rpguemura"  time="1000"  wait="false"  layer="1"  ]
[chara_hide  pos_mode="false"  name="rpgkanon"  time="1000"  wait="false"  layer="1"  ]
[chara_hide  pos_mode="false"  name="rpgkayoko"  time="1000"  wait="false"  layer="1"  ]
[chara_hide  pos_mode="false"  name="rpgromi"  time="1000"  wait="false"  layer="1"  ]
[chara_hide  pos_mode="false"  name="rpgsusumu"  time="1000"  wait="true"  layer="1"  ]
[jump  storage="title_screen.ks"  target=""  ]
[s  ]
