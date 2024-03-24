extends Node2D

var cardname = "Mental breakdown"
var type = "attack"
var damage = 1
var target = "all"
@onready var enemyClose = $"../../enemyClose"
@onready var enemyMiddle = $"../../enemyMiddle"
@onready var enemyFar = $"../../enemyFar"
@onready var player = $"../../Player"

func use():
	if enemyClose.alive:
		enemyClose.take(damage)
		print("Dealt %f to %s" % [damage, enemyClose])
	if enemyMiddle.alive:
		enemyMiddle.take(damage)
		print("Dealt %f to %s" % [damage, enemyMiddle])
	#if enemyFar.alive:
		#enemyFar.like(damage)
	if player.alive:
		player.take(damage)
		print("Dealt %f to %s" % [damage, player])
	#print("You're at your wits' end and it's their fault")
