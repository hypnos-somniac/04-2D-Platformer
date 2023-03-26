extends Control

func _on_Play_Again_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
	
func _physics_process(delta):
	$Score.text = "Score: " + str(Global.score)


