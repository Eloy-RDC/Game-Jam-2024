extends Area2D


func _ready():
	connect("input_event", _input)


func _input(event):
	if event is InputEventMouseButton:
		pass
