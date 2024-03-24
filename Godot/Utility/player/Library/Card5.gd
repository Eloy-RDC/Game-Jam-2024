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
	
	if(enemyClose.shield >0):
		enemyClose.shield -= damage
		if (enemyClose.shield<0):
			enemyClose.hp += enemyClose.shield
			enemyClose.shield = 0
	else: enemyClose.hp -= damage
	
	if(enemyMiddle.shield >0):
		enemyMiddle.shield -= damage
		if (enemyMiddle.shield<0):
			enemyMiddle.hp += enemyMiddle.shield
			enemyMiddle.shield = 0
	else: enemyMiddle.hp -= damage
	
	if(enemyFar.shield >0):
		enemyFar.shield -= damage
		if (enemyFar.shield<0):
			enemyFar.hp += enemyFar.shield
			enemyFar.shield = 0
	else: enemyFar.hp -= damage
	
	player.hp -= damage
