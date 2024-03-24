extends Node2D

var alive = true

var enemy_name = "Archer"
var hp = 15
var shield = 0
var attack_points = 8


func block():
	print("{name} blocked".format([["name", enemy_name]]))


func attack():
	print("{name} attacked".format([["name", enemy_name]]))
