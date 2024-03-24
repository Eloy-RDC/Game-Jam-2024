extends Node2D


@onready var player = $"Player"
@onready var enemyClose = $"enemyClose"
@onready var enemyMiddle = $"enemyMiddle"
@onready var enemyFar = $"enemyFar"
@onready var enemies = [enemyClose, enemyMiddle]
@onready var HandInteface = $GUI/HandInterface
@onready var rng = RandomNumberGenerator.new()


signal visibility(state)


func _ready():
	#$"/BackGround/Area2D".connect("mouse_over_fish", to_fish_land)
	#$"/BackGround/Area2D".connect("mouse_over_past", to_knight_land)
	var loop = true
	var still_alive = enemies.size()
	while loop:
		# player's turn
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
			get_tree().change_scene_to_file("res://Utility/Worlds/aquatic_world.tscn")
		if not player.alive:
			get_tree().change_scene_to_file("res://Utility/Worlds/office_world.tscn")


func _input(event):
	if event is InputEventKey:
		if event.keycode == KEY_M:
			get_tree().change_scene_to_file("res://Utility/Worlds/office_world.tscn")
		elif event.keycode == KEY_A:
			get_tree().change_scene_to_file("res://Utility/Worlds/aquatic_world.tscn")



func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
