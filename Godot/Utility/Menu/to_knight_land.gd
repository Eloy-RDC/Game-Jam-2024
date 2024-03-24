extends Button


func _ready():
	connect("button_down", to_knight_land)


func to_knight_land():
	get_tree().change_scene_to_file("res://Utility/Worlds/medieval_world.tscn")
