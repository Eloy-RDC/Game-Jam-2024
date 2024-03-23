extends Node2D

var cardname = "Mental breakdown"
var type = "attack"
var damage = 1
var target = "all"
@onready var enemy1 = $"../../enemy1"
@onready var enemy2 = $"../../enemy2"
@onready var enemy3 = $"../../enemy3"
@onready var player = $"../../Player"

func use():
	
	if(enemy1.shield >0):
		enemy1.shield -= damage
		if (enemy1.shield<0):
			enemy1.hp += enemy1.shield
			enemy1.shield = 0
	else: enemy1.hp -= damage
	
	if(enemy2.shield >0):
		enemy2.shield -= damage
		if (enemy2.shield<0):
			enemy2.hp += enemy2.shield
			enemy2.shield = 0
	else: enemy2.hp -= damage
	
	if(enemy3.shield >0):
		enemy3.shield -= damage
		if (enemy3.shield<0):
			enemy3.hp += enemy3.shield
			enemy3.shield = 0
	else: enemy3.hp -= damage
	
	player.hp -= damage
