extends Node

# Everyone gets notified whenever a new client joins the server
func _on_player_connected(id):
	pass


# Everyone gets notified whenever someone disconnects from the server
func _on_player_disconnects(id):
	pass


# Peer trying to connect to server is notified on success
func _connected_to_server():
	pass


# Peer trying to connect to server is notified on failure
func _connection_failed():
	pass


# Peer is notified when disconnected from server
func _on_disconnected_from_server():
	pass
