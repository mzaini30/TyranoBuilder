[_tb_system_call storage=system/_scene1.ks]

[cm  ]
[bg  storage="room.jpg"  time="1000"  ]
[tb_show_message_window  ]
Hello.[p]
This is random event project example.[p]
There will be a button after this and when you click it you will get a random picture with explanation.[p]


[glink  color="black"  storage="scene1.ks"  size="20"  text="Click&nbsp;me!"  x="404"  y="244"  width=""  height=""  _clickable_img=""  target="*Rand"  ]
[s  ]
*Rand

[tb_eval  exp="f.random=Math.floor(Math.random()*3)+1"  name="random"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_start_tyrano_code]
The random number is : [emb exp="f.random"] [p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.Number=f.random"]

[if exp="f.Number ==1"]
[jump storage=scene1.ks target=*B1]
[elsif exp="f.Number == 2"]
[jump storage=scene1.ks target=*B2]
[else]
[jump storage=scene1.ks target=*B3]
[endif]
[_tb_end_tyrano_code]

[s  ]
*B1

[tb_start_tyrano_code]
[image storage="default/Butterfly01.jpg" layer=1 page=fore visible=true width="400"  height="400" pos="center"]
[_tb_end_tyrano_code]

It's American moth-butterflies. It's Small, brown, like geometrid moths; antennae not clubbed; long slim abdomen[p]


[s  ]
*B2

[tb_start_tyrano_code]
[image storage="default/Butterfly02.jpg" layer=1 page=fore visible=true width="400"  height="400"  pos="center"]
[_tb_end_tyrano_code]

It's Skippers. It's small, darting flight; clubs on antennae hooked backwards.[p]


[s  ]
*B3

[tb_start_tyrano_code]
[image storage="default/Butterfly03.jpg" layer=1 page=fore visible=true width="400"  height="400"  pos="center"]
[_tb_end_tyrano_code]

It's Blues/coppers/hairstreaks. It's small, brightly coloured; often have false heads with eyespots and small tails resembling antennae.[p]


