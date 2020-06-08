extends Node2D

export (PackedScene) var scene1

func _ready():
	var instance_scene = scene1.instance()
	add_child(instance_scene)
	instance_scene.position = OS.get_window_size() / 4
