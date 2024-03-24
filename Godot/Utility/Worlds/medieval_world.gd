extends Node2D


@onready var player = $"Player"
@onready var enemyClose = $"enemyClose"
@onready var enemyMiddle = $"enemyMiddle"
@onready var enemyFar = $"enemyFar"
@onready var enemies = [enemyClose, enemyMiddle, enemyFar]
@onready var HandInteface = $GUI/HandInterface
@onready var rng = RandomNumberGenerator.new()


signal visibility(state)


func _ready():
	while true:
		var card = await HandInteface.card_used
		match card.use():
			"close": enemies.remove_at(0)
			"middle": enemies.remove_at(1)
			"":
				print("w")
				break


func battle():
	print('ok')


func player_turn():
	# check status effect
	# action
	for i in range(enemies.size()):
		if enemies[i].alive == false:
			enemies.remove_at(i)
	if enemies.size() == 0:
		print("victory")
	# move
	visibility.emit(false)
	enemies_turn()


func enemies_turn():
	# check status effect
	# action
	if not player.alive:
		print("defeat")
	for enemy in enemies:
		match rng.randi_range(0, 1):
			0: enemy.block()
			1: enemy.attack()
	visibility.emit(true)


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
