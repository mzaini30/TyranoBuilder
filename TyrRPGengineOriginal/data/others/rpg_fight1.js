
function startgame()
{
$('.content').css('background-image', 'url(' + background + ')');
$('.chatlog').append('<span>'+monstername+' appears</span>');
$('.monsterplaceholder').prepend('<img src="data/fgimage/chara/1/'+monsterpng+'.png" class="monsterimage">');
$('.playeravatar').prepend('<img src="data/rpg/images/avatar/'+playeravatar+'.png">');
$('.monsteravatar').prepend('<img src="data/rpg/images/avatar/'+monsteravatar+'.png">');
$('.playerlife').html(''+playerhp+'/'+originalplayerhp+'');
$('.monsterlife').html(''+monsterhp+'/'+originalmonsterhp+'');

var newplayerwidth = playerwidth/originalplayerhp * playerhp
$('.playerhealth').css('width',newplayerwidth);
var newwidth = monsterwidth/originalmonsterhp * monsterhp;
$('.monsterhealth').css('width',newwidth);
}

function monster()
{
	monsterloop = setInterval(function() {
		if(monstertype===1) {
		var monsterattacks = [["lightning-bolt", 25],["fire", 35],["wind", 40]];
		}
		else {
			var monsterattacks = [["earth", 25],["earth", 35],["earth", 40]];
		}
		var randomattack = monsterattacks[Math.floor(Math.random() * monsterattacks.length)];
		var monsterattackname = randomattack[0].replace("-", " ");
		$('.chatlog').append('<span>'+monstername+' uses '+monsterattackname+'</span>');
		$('.effect').append('<img src="data/rpg/images/effects/'+randomattack[0]+'.png" style="width:10%" class="imgfx">');
		$('.imgfx').animate({width: '45%'}, 900, function() {});
		setTimeout(function() { 
			$( ".playerui" ).effect( "shake" );
			playerhp = playerhp - randomattack[1];
			var newplayerwidth = playerwidth/originalplayerhp * playerhp
			$('.playerhealth').css('width',newplayerwidth);
			$(".flash").fadeIn(50).fadeOut(100);
			$('.chatlog').append('<span>you take '+randomattack[1]+' points of damage</span>');
			$('.effect').empty('<img src="data/rpg/images/effects/'+randomattack[0]+'.png">');
			$('.playerlife').html(''+playerhp+'/'+originalplayerhp+'');
		}, 900);
	}, monsterspeed);
}

function player()
{
	$(".icon").bind("click",function() {
		var data = $(this).data("id");
		var type = $(this).data("type");
		var specs = $(this).data("specs");
		cooldown(data);
		var playeractions = data.split('|');
		
		//poison:start
		if(type=="poison") {
			var poisonspecs =  specs.split('|'); 
			var poisontick = poisonspecs[0];
			var poisonduration = poisonspecs[1];
			poison(playeractions[1]);
			
			var playerattackname = playeractions[0].replace("-", " ");
			$('.chatlog').append('<span>you use '+playerattackname+' on '+monstername+'</span>');
			$('.playereffect').append('<img src="data/rpg/images/effects/'+playeractions[0]+'.png"  style="width:60%" class="playerimgfx">');
			$('.playerimgfx').animate({width: '15%'}, 900, function() {});
			setTimeout(function() {
			$( ".monsterui" ).effect( "shake" );
			monsterhp = monsterhp - playeractions[1];
			var newwidth = monsterwidth/originalmonsterhp * monsterhp;
			$( ".monsterplaceholder" ).effect( "shake" );
			$('.monsterhealth').css('width',newwidth);
			$('.chatlog').append('<span>'+monstername+' loses '+playeractions[1]+' health points</span>');
			$('.playereffect').empty('<img src="data/rpg/images/effects/'+playeractions[0]+'.png">');
			$('.monsterlife').html(''+monsterhp+'/'+originalmonsterhp+'');
			}, 900); 
			
		} else {}
		//poison:end
		
		//magic:start
		if(type=="magic") {
			
			var playerattackname = playeractions[0].replace("-", " ");
			$('.chatlog').append('<span>you use '+playerattackname+' on '+monstername+'</span>');
			$('.playereffect').append('<img src="data/rpg/images/effects/'+playeractions[0]+'.png"  style="width:60%" class="playerimgfx">');
			$('.playerimgfx').animate({width: '15%'}, 900, function() {});
			setTimeout(function() {
			$( ".monsterui" ).effect( "shake" );
			monsterhp = monsterhp - playeractions[1];
			var newwidth = monsterwidth/originalmonsterhp * monsterhp;
			$( ".monsterplaceholder" ).effect( "shake" );
			$('.monsterhealth').css('width',newwidth);
			$('.chatlog').append('<span>'+monstername+' loses '+playeractions[1]+' health points</span>');
			$('.playereffect').empty('<img src="data/rpg/images/effects/'+playeractions[0]+'.png">');
			$('.monsterlife').html(''+monsterhp+'/'+originalmonsterhp+'');
			}, 900); 
			
		} else {}
		//magic:end
		
		
		//melee:start
		if(type=="melee") {
		var playerattackname = playeractions[0].replace("-", " ");
		$('.chatlog').append('<span>you use '+playerattackname+' on '+monstername+'</span>');
		$('.playereffect').append('<img src="data/rpg/images/effects/'+playeractions[0]+'.png"  class="playerimgfx">');
		setTimeout(function() {
			$( ".monsterui" ).effect( "shake" );
			monsterhp = monsterhp - playeractions[1];
			var newwidth = monsterwidth/originalmonsterhp * monsterhp;
			$( ".monsterplaceholder" ).effect( "shake" );
			$('.monsterhealth').css('width',newwidth);
			$('.chatlog').append('<span>'+monstername+' loses '+playeractions[1]+' health points</span>');
			$('.playereffect').empty('<img src="data/rpg/images/effects/'+playeractions[0]+'.png">');
			$('.monsterlife').html(''+monsterhp+'/'+originalmonsterhp+'');
		}, 250); 
		
		}
		//melee:end	
		
		
		//heal:start
		if(type=="heal") {
		var playerattackname = playeractions[0].replace("-", " ");
		$('.chatlog').append('<span>you use '+playerattackname+'</span>');
		$('.playereffect').append('<img src="data/rpg/images/effects/'+playeractions[0]+'.png"  class="playerimgfx">');
		var amountheal = playeractions[1];
		heal(amountheal);
		setTimeout(function() {
			$('.chatlog').append('<span>you gain '+amountheal+' health points</span>');
			$('.playereffect').empty('<img src="data/rpg/images/effects/'+playeractions[0]+'.png">');
		}, 950); 
		
		}
		//heal:end	



	}); 
}




/*! heal */
function heal(hprestore)
{

			if(playerhp + parseInt(hprestore) >= originalplayerhp) {
			playerhp = originalplayerhp;
			$('.playerhealth').css('width',playerwidth);
			$('.playerlife').html(''+playerhp+'/'+originalplayerhp+'');
			}
			else {
				playerhp = playerhp + parseInt(hprestore);
				var newplayerwidth = playerwidth/originalplayerhp * playerhp
				$('.playerhealth').css('width',newplayerwidth);
				$('.playerlife').html(''+playerhp+'/'+originalplayerhp+'');
			}

			}



			
/*! Monitoring poison */
function watchpoison()
{
	setTimeout(function(){
	$('.chatlog').append('<span>'+monstername+' is no longer poisoned</span>');
	clearInterval(poisoningloop);
	}, poisonduration);
}

/*! Poison */
function poison(poisondamage)
{
	watchpoison();
	poisoningloop = setInterval(function(pois) {
		$( ".monsterui" ).effect( "shake" );
		monsterhp = monsterhp - poisondamage;
		var newwidth = monsterwidth/originalmonsterhp * monsterhp;
		$('.monsterlife').html(''+monsterhp+'/'+originalmonsterhp+'');
		$('.monsterhealth').css('width',newwidth);
		$('.chatlog').append('<span>'+monstername+' is poisoned and loses '+poisondamage+' health points</span>');
	}, poisontick);
}

/*! Chatlog */
function chat()
{
	setInterval(function() {
	$('.chatlog').animate({scrollTop: $('.chatlog').prop("scrollHeight")}, 500);
	}, 800);
}

/*! Monitoring player and monster HP */
function watchhp()
{
	watchending = setInterval(function() {
		if(monsterhp < 1) {
		$('.monsterhealth').css('width','2px');
		$('.monsterlife').html('0/'+originalmonsterhp+'');
		gameovermonster();
		} else {}
		if(playerhp < 1) {
		$('.playerhealth').css('width','2px');
		$('.playerlife').html('0/'+originalplayerhp+'');
		gameoverplayer();
		}
		else {}
	}, 800);
}

/*! Cooldown for skills */
function cooldown(data)
{
	var cooldowndata =  data.split('|'); 
	var actiontohide = $("div").find("[data-id='" + data + "']");
	actiontohide.prev().show();
	actiontohide.hide();
	setTimeout(function() { actiontohide.prev().hide(); actiontohide.show(); }, cooldowndata[2]);
}

/*! Game over */
function gameoverplayer()
{
	clearInterval(watchending);
	$('.chatlog').append(losingtext);
	$('.content').hide('slow');
	TYRANO.kag.ftag.nextOrderWithLabel("fight1lose","");
	//skills can no longer be used
	$(".icon").unbind("click");
	//we clear intervals
	clearInterval(monsterloop);
	clearInterval(poisoningloop);
}

/*! Player wins */
function gameovermonster()
{
	clearInterval(watchending);
	$('.chatlog').append(winingtext);
	$('.content').hide('slow');
	$('.monsterimage').fadeIn(50).fadeOut(100).fadeIn(50).fadeOut(100).fadeIn(50).fadeOut(100).fadeIn(50).fadeOut(100);
	TYRANO.kag.ftag.nextOrderWithLabel("fight1win","");
	//skills can no longer be used
	$(".icon").unbind("click");
	//we clear intervals
	clearInterval(monsterloop);
	clearInterval(poisoningloop);
}

/*! jQuery UI for tooltip */
 $(function() {
$( document ).tooltip({
        tooltipClass: "tooltip",
});
});