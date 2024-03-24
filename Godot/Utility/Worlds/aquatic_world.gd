extends Node2D


@onready var player = $"Player"
@onready var enemyClose = $"enemyClose"
@onready var enemyMiddle = $"enemyMiddle"
@onready var enemies = [enemyClose, enemyMiddle]
@onready var HandInteface = $GUI/HandInterface
@onready var rng = RandomNumberGenerator.new()


func _ready():
	var loop = true
	while loop:
		# player's turn
		HandInteface.deal_deck()
		var card = await HandInteface.card_used
		card.use()
		# enemy's turn
		var count = 0
		for enemy in enemies:
			if enemy.alive:
				await get_tree().create_timer(0.5).timeout
				enemy.action()
			if enemy.alive == false:
				enemy.hide()
				count += 1
		if count == 2:
			get_tree().change_scene_to_file("res://Utility/Worlds/medieval_world.tscn")
		if not player.alive:
			get_tree().change_scene_to_file("res://Utility/Worlds/office_world.tscn")


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
