extends Node2D


var cardname = "Mail Trash Talk"
var type = "attack"
var damage = 6
var target = "far"

@onready var enemyClose = $"../../enemyClose"
@onready var enemyMiddle = $"../../enemyMiddle"
@onready var enemyFar = $"../../enemyFar"
@onready var player = $"../../Player"

func use():
	if(enemyFar.alive):
		if(enemyFar.shield >0):
			enemyFar.shield -= damage
			if (enemyFar.shield<0):
				enemyFar.hp += enemyFar.shield
				enemyFar.shield = 0
		else: enemyFar.hp -= damage
	else:
		if(enemyMiddle.alive):
			if(enemyMiddle.shield >0):
				enemyMiddle.shield -= damage
				if (enemyMiddle.shield<0):
					enemyMiddle.hp += enemyMiddle.shield
					enemyMiddle.shield = 0
			else: enemyMiddle.hp -= damage
		else:
			if(enemyClose.alive):
				if(enemyClose.shield >0):
					enemyClose.shield -= damage
					if (enemyClose.shield<0):
						enemyClose.hp += enemyClose.shield
						enemyClose.shield = 0
				else: enemyClose.hp -= damage
