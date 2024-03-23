extends Node2D

var hp = 40
var shield = 0
var nextturn_shield = 0
var player_turn = 0

func are_nextturn_shield():
	if nextturn_shield > 0:
		shield += nextturn_shield
		nextturn_shield = 0


# turn based combat
func battle():
	var victory = 0 # 1 = player wins; -1 = player loses
	while victory == 0:
		pass
