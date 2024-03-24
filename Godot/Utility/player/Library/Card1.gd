extends Node2D

var cardname = "Case throw"
var type = "attack"
var damage = 6
var target = "middle"

@onready var enemyClose = $"../../enemyClose"
@onready var enemyMiddle = $"../../enemyMiddle"
@onready var enemyFar = $"../../enemyFar"
@onready var player = $"../../Player"

func use():
	#if enemyFar.alive:
		#if enemyFar.take(damage):
			#return "Far"
	if enemyClose.alive:
		enemyClose.take(damage)
		#print("{enemyName} received got head bashed by a suitecase".format([["enemyName", enemyClose.enemy_name]]))
		print("Dealt %f to %s" % [damage, enemyClose])
	if enemyMiddle.alive:
		enemyMiddle.take(damage)
		#print("{enemyName} received got head bashed by a suitecase".format([["enemyName", enemyMiddle.enemy_name]]))
		print("Dealt %f to %s" % [damage, enemyMiddle])
