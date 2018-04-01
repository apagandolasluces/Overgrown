extends Node2D

signal landed
onready var grounded = false
onready var spd = 200
onready var mov = [Vector2(-spd, 0), Vector2(spd, 0)]
var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	set_process(true)
	pass


func _process(delta):
    if(position.x < 40):
        position.x = 40
    if(position.x > screen_size.x - 40):
        position.x = screen_size.x - 40
    if(position.y < 178):
	    position.y = 178
	
	
		

func _on_Area2D_area_entered(area):
 if(area.is_in_group("Platform")):
  grounded = true
  emit_signal("landed")


func _on_Area2D_area_exited(area):
 if(area.is_in_group("Platform")):
  grounded = false


	

