;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;
;
;return 必須
[iscript]
$(".message_outer").css("z-index",10)
$(".0_fore").css("z-index",11)
$(".1_fore").css("z-index",1)
[endscript]
[return]