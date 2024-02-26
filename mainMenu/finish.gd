extends Node2D
@onready var name_lable = $name
@onready var points_lable = $"Очки"

func _ready():
	name_lable.text = Global.player
	points_lable.text = Global.points
	pass # Replace with function body.

func _process(delta):
	pass

func _on_finish_pressed():
	Global.points=0
	get_tree().change_scene_to_file("res://mainMenu/menu.tscn")
	pass # Replace with function body.
