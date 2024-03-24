extends Node2D

var alive = true

var enemy_name = "Archer"
var hp = 15
var shield = 0
var attack_points = 8

func _process(delta):
	$TextureProgressBar.value = hp

func block():
	print("{name} blocked".format([["name", enemy_name]]))


func attack():
	await get_tree().create_timer(0.3).timeout
	$Sprite2D.play("attack")
	await get_tree().create_timer(0.1).timeout
	%ArrowAnim.play("Arrow")
	print("{name} attacked".format([["name", enemy_name]]))
