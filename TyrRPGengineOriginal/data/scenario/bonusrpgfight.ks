[_tb_system_call storage=system/_bonusrpgfight.ks]

[cm  ]
*bonusrpg

[delay  speed="40"  ]
[bg  time="3000"  method="crossfade"  storage="rpg/rpgbg14.jpg"  ]
[chara_show  name="kopu"  time="123"  wait="true"  left="343"  top="97"  width="299"  height="380"  reflect="false"  ]
[loadjs storage="rpg_fight1.js" ]

[tb_start_tyrano_code]
[html top=0 left=0]
<link rel="stylesheet" href="data/rpg/jquery-ui.css">
<link rel="stylesheet" href="data/rpg/game.css" />
<div class="content">
<div class="playerui"><div class="playeravatar"></div><span class="playerlife"></span></div>
<div class="monsterui"><div class="monsteravatar"></div><span class="monsterlife"></span></div>
<div class="versus"></div>
<div class="clear"></div>
<div class="monsterplaceholder"></div>
<div class="effect"></div>
<div class="playereffect"></div>
<div class="clear"></div>
<div class="actions">
<div class="actionholder">

<div class="box"><div class="subbox"></div><div class="icon"  data-id="sword-slash|8|2000" data-type="melee"><img src="data/rpg/images/icons/icon-sword-1.gif" title="Sword Slash : 8 DMG | Cooldown : 2 sec."></div></div>

<div class="box"><div class="subbox"></div><div class="icon"  data-id="fire-sword|22|7000" data-type="melee"><img src="data/rpg/images/icons/icon-sword-2.gif" title="Fire Sword : 22 DMG | Cooldown : 7 sec."></div></div>

<div class="box"><div class="subbox"></div><div class="icon"  data-id="triple-attack|30|60000" data-type="melee"><img src="data/rpg/images/icons/icon-sword-3.gif" title="Triple Attack : 30 DMG | Cooldown : 10 sec."></div></div>

<div class="box"><div class="subbox"></div><div class="icon" data-id="swift-attack|21|6000" data-type="melee"><img src="data/rpg/images/icons/icon-sword-4.gif" title="Swift Attack : 21 DMG | Cooldown : 6 sec."></div></div>
<div class="box"><div class="subbox"></div><div class="icon"  data-id="devil-slice|55|32000" data-type="melee"><img src="data/rpg/images/icons/icon-sword-5.gif" title="Devil Slice : 55 DMG | Cooldown : 32 sec."></div></div>
<div class="box"><div class="subbox"></div><div class="icon"  data-id="lightning-slice|55|32000" data-type="melee"><img src="data/rpg/images/icons/icon-sword-6.gif" title="Lightning Slice : 55 DMG | Cooldown : 32 sec."></div></div>



</div>
</div>
<div class="chatlog">
</div>
<div class="flash"></div>
</div>





<script type="text/javascript" defer="defer">
var background = 'data/rpg/images/background/empty.png';
var playeravatar = 'susumu';
var playerhp = 250;
var originalplayerhp = 250;
var poisontick = 5000;
var poisonduration = 20000;
var monstername = 'Kopu';
var monsteravatar = 'kopu';
var monsterpng = 'kopu';
var monsterhp = 180;
var originalmonsterhp = 180;
var monstertype = 1;
var monsterspeed = 5000;
var goldwon = 5;
var winingtext = '<span>you defeated '+monstername+' and won '+goldwon+' gold pieces</span>';
var losingtext = '<span>you were defeated by '+monstername+'</span>';

var playerwidth = $('.playerhealth').width();
var playerhpfactor =  parseInt(originalplayerhp, 10) / parseInt(playerwidth, 10);
var monsterwidth = $('.monsterhealth').width();
var monsterhpfactor =  parseInt(originalmonsterhp, 10) / parseInt(monsterwidth, 10);

startgame();
player();
monster();
chat();
watchhp();




</script>

[endhtml]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.gem=1"]
[eval exp="f.loli=1"]
[eval exp="f.check=0"]
[_tb_end_tyrano_code]

[s  ]
*fight1win

[chara_hide  name="kopu"  time="1000"  wait="true"  pos_mode="false"  ]
*ShowItems

[tb_start_tyrano_code]
[macro name = "gem"]
[if exp="f.gem==1"]
[image storage="default/Gem.png" layer=1 page=fore visible=true x="41"  y="124" ]
[locate x=41 y=124]
[clickable width=150 height=150 target=*RemoveGem]
[else]
[endif]
[endmacro]

[macro name="loli"]
[if exp="f.loli==1"]
[image storage="default/Lollipop.png" layer=2 page=fore visible=true x="247"  y="151" ]
[locate x=247 y=151]
[clickable width=150 height=150 target=*RemoveLoli]
[else]
[endif]
[endmacro]

[if exp="f.check==2"]
[jump storage=bonusrpgfight.ks target=*MoveOn]
[else]
[gem] [loli]
[endif]
[_tb_end_tyrano_code]

[s  ]
*RemoveGem

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.gem=0"]
[eval exp="f.check+=1"]
[freeimage layer=1 page=fore]

Kamu mendapatkan gem [p]
[_tb_end_tyrano_code]

[jump  storage="bonusrpgfight.ks"  target="*ShowItems"  ]
*RemoveLoli

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.loli=0"]
[eval exp="f.check+=1"]
[freeimage layer=2 page=fore]

Kamu dapet permen [p]
[_tb_end_tyrano_code]

[jump  storage="bonusrpgfight.ks"  target="*ShowItems"  ]
[jump  storage="afterfight.ks"  target="*afterfight1"  ]
*fight1lose

[chara_hide  name="kopu"  time="1000"  wait="true"  pos_mode="false"  ]
[jump  storage="afterfight.ks"  target="*afterfight1"  ]
[s  ]
*MoveOn

