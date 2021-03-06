[_tb_system_call storage=system/_preview.ks ]

[cm  ]
*bonusrpg

[delay  speed="40"  ]
[tb_hide_message_window  ]
[bg  time="3000"  method="crossfade"  storage="rpg/rpgbg14.jpg"  ]
[chara_show  name="kopu"  time="1000"  wait="true"  left="343"  top="97"  width="299"  height="380"  reflect="false"  ]
[loadjs storage = "rpg_fight1.js" ]

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
<div class = "actionholder">

<div class = "box"> <div class = "subbox"> </div> <div class = "icon" data-id = "Sabetan Mawut|8|2000"  data-type = "melee"> <img src = "data/rpg/images/icons/icon-sword-1.gif" title = "Sabetan Mawut 8 dmg | Cooldown 2 detik">    </div></div>
<div class = "box"> <div class = "subbox"> </div> <div class = "icon" data-id = "Pedang Api|22|7000"       data-type = "melee"> <img src = "data/rpg/images/icons/icon-sword-2.gif" title = "Pedang Api 22 dmg | Cooldown 7 detik">         </div> </div>
<div class = "box"> <div class = "subbox"> </div> <div class = "icon" data-id = "triple-attack|10|6000"       data-type = "melee"> <img src = "data/rpg/images/icons/icon-sword-3.gif" title = "Triple Attack 10 DMG | Cooldown 6 detik">      </div> </div>
<div class = "box"> <div class = "subbox"> </div> <div class = "icon" data-id = "swift-attack|21|6000"      data-type = "melee"> <img src = "data/rpg/images/icons/icon-sword-4.gif" title = "Swift Attack 21 DMG | Cooldown : 6 sec.">     </div> </div>
<div class = "box"> <div class = "subbox"> </div> <div class = "icon" data-id = "Pedang Setan|15|3000"   data-type = "melee"> <img src = "data/rpg/images/icons/icon-sword-5.gif" title = "Pedang Setan 15 DMG | Cooldown 3 detik">    </div> </div>
<div class = "box"> <div class = "subbox"> </div> <div class = "icon" data-id = "Samberan Petir|25|3000" data-type = "melee"> <img src = "data/rpg/images/icons/icon-sword-6.gif" title = "Samberan Petir 25 DMG | Cooldown 3 detik." > </div> </div>

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
var monstername = 'Kelinci';
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

[s  ]
*fight1win

[chara_hide  name="kopu"  time="1000"  wait="true"  pos_mode="false"  ]
[jump  storage="afterfight.ks"  target="*afterfight1"  ]
[s  ]
*fight1lose

[chara_hide  name="kopu"  time="1000"  wait="true"  pos_mode="false"  ]
[jump  storage="afterfight.ks"  target="*afterfight1"  ]
[s  ]
