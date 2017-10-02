

;Menu button hidden
;[hidemenubutton]


;Load libraries necessary for games
[call storage="system/tyrano.ks"]
[call storage="system/builder.ks"]
[call storage="system/chara_define.ks"]

;Support for live 2D


[layopt layer=2 visible=true]
[layopt layer="message0" visible=false]
[call storage="system/message_window.ks"]

;Setting Title
;[title name="now loading"]

;Title screen display
[jump storage="title_screen.ks"]

;--------------------------

[s]