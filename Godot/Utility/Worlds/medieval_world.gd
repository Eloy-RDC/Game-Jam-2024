extends Node2D


@onready var player = $"Player"
@onready var enemyClose = $"enemyClose"
@onready var enemyMiddle = $"enemyMiddle"
@onready var enemyFar = $"enemyFar"
@onready var enemies = [enemyClose, enemyMiddle, enemyFar]
@onready var HandInteface = $GUI/HandInterface

signal visibility(state)


func _ready():
	HandInteface.connect("card_used", player_turn)
	visibility.emit(true)


func player_turn():
	# check status effect
	# action
	if not enemyClose.alive and not enemyMiddle.alive and not enemyFar.alive:
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
		pass
	visibility.emit(true)

# turn based combat
#func battle():
	#
	##init_gui()
	#
	#var victory = 0 # 1 = player wins; -1 = player loses
	#while victory == 0:
		#
		## player's turn
		#if player.alive:
			#pass
			##check status effect
			##show_hand
			##wait input
			##animation
			##move
		#else:
			#victory = -1
		#
		## enemies' turn
		#if enemyClose.alive and enemyMiddle.alive and enemyFar.alive:
			#pass
			##check status effect
			##animation
			##move
		#else:
			#victory = 1
