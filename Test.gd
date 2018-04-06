extends Node

onready var tankbeetle = load("res://tankbeetle.tscn")
onready var worm = load("res://worm.tscn")
onready var ant = load("res://ant.tscn")


func _ready():
    get_tree().paused = true
    var worm_one = worm.instance()
    worm_one.position = Vector2(993, 517)
    worm_one.scale = Vector2(2,2)
    add_child(worm_one)
	
    var worm_two = worm.instance()
    worm_two.position = Vector2(500, 517)
    worm_two.scale = Vector2(2,2)
    add_child(worm_two)

    var ant_one = ant.instance()
    ant_one.position = Vector2(700, 501)
    ant_one.scale = Vector2(2,2)
    add_child(ant_one)
	
	

func _on_shrub_landed():
	pass


func _on_tankbeetle_landed():
	pass # replace with function body


func _on_worm_landed():
	pass # replace with function body
	

func _on_ant_landed():
	pass # replace with function body
