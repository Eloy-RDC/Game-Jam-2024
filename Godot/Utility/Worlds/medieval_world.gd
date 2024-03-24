extends Node2D


@onready var player = $"Player"
@onready var enemyClose = $"enemyClose"
@onready var enemyMiddle = $"enemyMiddle"
@onready var enemyFar = $"enemyFar"
@onready var enemies = [enemyClose, enemyMiddle]
@onready var HandInteface = $GUI/HandInterface
@onready var rng = RandomNumberGenerator.new()


func _ready():
	var loop = true
	var still_alive = enemies.size()
	while loop:
		# player's turn
		HandInteface.deal_deck()
		var card = await HandInteface.card_used
		card.use()
		# enemy's turn
		for enemy in enemies:
			if enemy.alive:
				enemy.action()
			else:
				still_alive -= 1
			if still_alive == 0:
				print("w")
				get_tree().change_scene_to_file("res://Utility/Worlds/medieval_world.tscn")
		if not player.alive:
			get_tree().change_scene_to_file("res://Utility/Worlds/office_world.tscn")


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
