[_tb_system_call storage=system/_CG.ks]

*StartCG

[cm  ]
[bg  time="3000"  method="crossfade"  storage="beach-daytime.jpg"  ]
[tb_start_tyrano_code]
[macro name="CG1"]
[locate x=100 y=200]
[button graphic="CG1.png" target=*ShowCG1]
[endmacro]

[macro name="CG2"]
[locate x=350 y=200]
[button graphic="CG2.jpg" target=*ShowCG2]
[endmacro]

[macro name="CG3"]
[locate x=600 y=200]
[button graphic="CG3.png" target=*ShowCG3]
[endmacro]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_ptext_show  x="3"  y="6"  size="70"  color="0x050000"  time="1000"  text="CG&nbsp;Gallery"  anim="false"  face=""  ]
[glink  color="black"  storage="CG.ks"  size="20"  x="803"  y="10"  width=""  height=""  _clickable_img=""  text="RETURN"  target="*EraseText"  ]
[tb_start_tyrano_code]
[if exp="sf.CG1==1"]
[CG1]
[endif]

[if exp="sf.CG2==1"]
[CG2]
[endif]

[if exp="sf.CG3==1"]
[CG3]
[endif]

[_tb_end_tyrano_code]

[s  ]
*EraseText

[cm  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="title_screen.ks"  target=""  ]
[s  ]
*ShowCG1

[cm  ]
[tb_ptext_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/winter_forest_lake_by_afiniwind-d9o5b1e.png"  width="960"  height="640"  ]
[wait  time="1000"  ]
[tb_image_hide  time="1000"  ]
[jump  storage="CG.ks"  target="*StartCG"  ]
[s  ]
*ShowCG2

[cm  ]
[tb_ptext_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/skyscraper_by_thenerdygirl101-d9s2g7x.jpg"  width="960"  height="640"  ]
[wait  time="1000"  ]
[tb_image_hide  time="1000"  ]
[jump  storage="CG.ks"  target="*StartCG"  ]
[s  ]
*ShowCG3

[cm  ]
[tb_ptext_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/neighborhood_bg_by_vixeria-d993xlc.png"  width="960"  height="640"  ]
[wait  time="1000"  ]
[tb_image_hide  time="1000"  ]
[jump  storage="CG.ks"  target="*StartCG"  ]
[s  ]
