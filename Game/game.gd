extends Node2D
var blin_pre = preload("res://Game/blin.tscn")
@onready var label_points = $Texts/points
@onready var label_text = $Texts/text
@onready var leaders_label = $Texts/Leaders
@onready var time_label = $Texts/Time
@onready var time_timer = $GameEnd

func _ready():
	label_text.text = Global.player
	leaders_label.text = Global.LeagersList

	pass

func _process(delta):
	label_points.text = str(Global.points)
	time_label.text = str(round(time_timer.time_left))
	Global.game_time = round(time_timer.time_left)
	pass

func blin_spawn():
	var blin = blin_pre.instantiate()
	blin.position= Vector2(randi_range(100,1100), -500)
	$Blins.add_child(blin)

func _on_blin_timer_timeout():
	blin_spawn()

func _on_game_end_timeout():
	get_tree().change_scene_to_file("res://mainMenu/finish.tscn")
	pass
