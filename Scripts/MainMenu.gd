extends Control

func _on_join_pressed() -> void:
	Lobby.join_game($"VBoxContainer/IpAddrres".text)
	get_tree().change_scene_to_file("res://Scenes/pre_game_lobby.tscn")

func _on_host_pressed() -> void:
	Lobby.create_game()
	get_tree().change_scene_to_file("res://Scenes/pre_game_lobby.tscn")

func _on_username_text_changed(new_text: String) -> void:
	Lobby.player_info["name"] = new_text
