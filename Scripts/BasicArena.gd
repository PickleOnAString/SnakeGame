extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Lobby.game_start.connect(_game_start)
	Lobby.player_loaded.rpc_id(1)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _game_start():    
	#player.name = Lobby.players[multiplayer.get_remote_sender_id()]["name"]
	#add_child(player)
	pass
