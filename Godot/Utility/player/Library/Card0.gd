extends Node2D


var cardname = "Mail Trash Talk"
var type = "attack"
var damage = 6
var target = "far"

@onready var enemyClose = $"../../enemyClose"
@onready var enemyMiddle = $"../../enemyMiddle"
@onready var enemyFar = $"../../enemyFar"
@onready var player = $"../../Player"

func use() -> String:
	#if enemyFar.alive:
		#if enemyFar.take(damage):
			#return "Far"
	if enemyMiddle.alive:
		if enemyMiddle.take(damage):
			return "middle"
	if enemyClose.alive:
		if enemyClose.take(damage):
			return "close"
	return ""
