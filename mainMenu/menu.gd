extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.readLeaders()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_start_pressed():
	get_tree().change_scene_to_file("res://mainMenu/name.tscn")


func _on_exit_pressed():
	get_tree().quit()
