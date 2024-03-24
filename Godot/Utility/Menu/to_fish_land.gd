extends Button


func _ready():
	connect("button_down", to_fish_land)


func to_fish_land():
	get_tree().change_scene_to_file("res://Utility/Worlds/aquatic_world.tscn")
