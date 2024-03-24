extends Node2D


var cardname = "Mail Trash Talk"
var type = "attack"
var damage = 6
var target = "far"

@onready var enemyClose = $"../../enemyClose"
@onready var enemyMiddle = $"../../enemyMiddle"
@onready var player = $"../../Player"

func use():
	#if enemyFar.alive:
		#if enemyFar.take(damage):
			#return "Far"
	if enemyClose.alive:
		enemyClose.take(damage)
		print("Dealt %f to %s" % [damage, enemyClose])
		#print("{enemyName} received a scorching email".format([["enemyName", enemyClose.enemy_name]]))
	if enemyMiddle.alive:
		enemyMiddle.take(damage)
		#print("{enemyName} received a scorching email".format([["enemyName", enemyMiddle.enemy_name]]))
		print("Dealt %f to %s" % [damage, enemyMiddle])
