extends Control

var PlayerNamePrefab: PackedScene = preload("res://Prefabs/player_name.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for player in Lobby.players:
		var PlayerName: Label = PlayerNamePrefab.instantiate()
		$HSplitContainer/Players/VBoxContainer.add_child(PlayerName)
		PlayerName.text = Lobby.players[player]["name"]
	Lobby.player_connected.connect(_on_player_connected)
	
func _on_player_connected(peer_id, player_info) -> void:
	var PlayerName: Label = PlayerNamePrefab.instantiate()
	$HSplitContainer/Players/VBoxContainer.add_child(PlayerName)
	PlayerName.text = player_info["name"]


func _on_start_pressed() -> void:
	Lobby.load_game("res://Scenes/arenas/basic_arena.tscn")
