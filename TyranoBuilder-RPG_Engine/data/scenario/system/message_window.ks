;メッセージレイヤの定義

		[position width=960 height=178 top=462 left=0 ]


		
			[position page=fore frame="box4.png" margint=10 marginl=200 marginr=220 marginb=10 vertical=false ]
		

		[ptext name="chara_name_area" layer="message0" color=0xFFFFFF size=20 x=24 y=550 bold=""]

		;キャラクターの表示モードに関する定義
		[chara_config ptext="chara_name_area" pos_mode=true time="1" memory="false" anim="true" effect="easeInQuad" pos_change_time="600" ]

		;キャラクターフォーカスなど
		[chara_config  talk_focus="none" ]

		;クリック待ちボタンについて
		[glyph fix="false" left="0" top="0" ]

		
        [button role="save" graphic="save.png" x="825" y="0" width="61" height="30" visible="false" ]
        
        [button role="load" graphic="load.png" x="756" y="0" width="65" height="30" visible="false" ]
        
        [button role="menu" graphic="menu.png" x="891" y="0" width="69" height="30" visible="false" ]
        
        [button role="auto" graphic="auto.png" x="688" y="0" width="65" height="30" visible="false" ]
        
		