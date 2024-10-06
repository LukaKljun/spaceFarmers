extends Node

var current_scene = "world"
var transition_scene = false

var player_exithouse_posx = 0
var player_exithouse_posy = 0
var player_start_posx = 0
var player_start_posy = 0

func finish_changescenes():
	if transition_scene == true:
		transition_scene = false
		if current_scene == "world":
			current_scene = "house"
		else:
			current_scene = "world"
