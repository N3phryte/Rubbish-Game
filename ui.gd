extends Node

var score : int = 0

func _process(delta: float) -> void:
	$score.text = "rubbish clean : " + str(score) + " / " + str($"..".rubbish_amount)
	$cleanup.text = "[pulse freq=1.0 color=#ffffff40 ease=-2.0]" + "clean up the rubbish!!"
	$Sprite2D.visible = $"../Player".has_rubbish
	
	if score == $"..".rubbish_amount:
		$score.add_theme_color_override("font_color", Color(0, 255, 0))
		$cleanup.text = "your did it"
