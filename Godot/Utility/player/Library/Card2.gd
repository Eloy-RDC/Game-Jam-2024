extends Node2D

var cardname = "Tie whip"
var type = "attack"
var damage = 6
var target = "close"
@onready var enemyClose = $"../../enemyClose"
@onready var enemyMiddle = $"../../enemyMiddle"
@onready var enemyFar = $"../../enemyFar"
@onready var player = $"../../Player"

func use():
	#if enemyFar.alive:
		#if enemyFar.take(damage):
			#return "Far"
	#if enemyMiddle.alive:
		#if enemyMiddle.take(damage):
			#return "middle"
	if enemyClose.alive:
		enemyClose.take(damage)
		#print("{enemyName} received felt the stern touch of the tie".format([["enemyName", enemyClose.enemy_name]]))
		print("Dealt %f to %s" % [damage, enemyClose])
