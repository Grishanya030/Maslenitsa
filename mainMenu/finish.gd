extends Node2D
@onready var name_lable = $name
@onready var points_lable = $"Очки"
@onready var leaders = $Leaders

func _ready():
	name_lable.text = Global.player
	points_lable.text = str(Global.points)
	Global.Leaders_Names.append(Global.player)
	Global.Leaders_Points.append(Global.points)
	Global.sort()
	leaders.text = Global.LeagersList
	
	pass 

func _process(delta):
	pass

func _on_finish_pressed():
	Global.points=0
	Global.readLeaders()
	get_tree().change_scene_to_file("res://mainMenu/menu.tscn")
	pass # Replace with function body.
