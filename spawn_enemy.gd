extends Node2D

const tankbeetle = preload("res://tankbeetle.gd")
const worm = preload("res://worm.gd")


func _ready():

	spawn()
	pass
	
func spawn():
	randomize()
	
	var tank_beetle = tankbeetle.instance()
	var pos_beetle = Vector2()
	pos_beetle.x = rand_range(0+1, get_viewport().get_visible_rect().size.width-50)
	pos_beetle.y = 510
	tank_beetle.set_pos(pos_beetle)
	
	var worm_enemy = worm.instance()
	var pos_worm = Vector2()
	pos_worm.x = rand_range(0+1, get_viewport().get_visible_rect().size.width-50)
	pos_worm.y = 510
	worm_enemy.set_pos(pos_worm)
	
	get_node("critters").add_child(tank_beetle)
	get_node("critters").add_child(worm_enemy)

