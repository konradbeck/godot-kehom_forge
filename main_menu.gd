extends CanvasLayer


func _ready():
	Network.connect("server_created", self, "_on_ready_to_play")
	Network.connect("join_success", self, "_on_ready_to_play")
	Network.connect("join_fail", self, "_on_join_fail")


func _on_btCreate_pressed():
	if !$PanelHost/txtServerName.text.empty():
		Network.server_info.name = $PanelHost/txtServerName.text
	Network.server_info.max_players = int($PanelHost/txtMaxPlayers.value)
	Network.server_info.used_port = int($PanelHost/txtServerPort.text)

	Network.create_server()


func _on_ready_to_play():
	get_tree().change_scene("res://game_world.tscn")


func _on_join_fail():
	print("Failed to join server")

func _on_btJoin_pressed():
	var ip = $PanelJoin/txtJoinIP.text
	var port = int($PanelJoin/txtJoinPort.text)
	Network.join_server(ip, port)
