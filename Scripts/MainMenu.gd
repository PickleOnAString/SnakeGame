extends Control

func _on_join_pressed() -> void:
	Lobby.join_game($"VBoxContainer/IpAddrres".text)

func _on_host_pressed() -> void:
	Lobby.create_game()

func _on_username_text_changed(new_text: String) -> void:
	Lobby.player_info["name"] = new_text
