extends Label

func _on_g1_body_entered(body):
	var score = get_node("/root/Global")
	if body.name == "ball":
		score.scorep2 += 1
		get_tree().reload_current_scene()
		
func _process(delta):
	var score = get_node("/root/Global")
	set_text(str(score.scorep2))
