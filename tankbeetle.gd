extends Node2D

signal landed
onready var grounded = false
onready var spd = 200
onready var direction = Vector2(spd,0)
var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	set_process(true)
	pass

func RotatePlayer(start, finish):
    var angle = start.angle_to_point(finish)
    set_rot(angle)

func _process(delta):
    if(position.x < screen_size.x):
        position -= direction * delta
        if(position.x < 40):
            direction.x = -(direction.x)
            if(position.x == 0):
                RotatePlayer(screen_size.x, position.x)
    if(position.x > screen_size.x):
        position += direction * delta
        if(position.x > screen_size.x - 40):
            direction.x = -(direction.x)
            if(position.x == screen_size.x):
                RotatePlayer(position.x, screen_size.x)
	
	
		

func _on_Area2D_area_entered(area):
 if(area.is_in_group("Platform")):
  grounded = true
  emit_signal("landed")


func _on_Area2D_area_exited(area):
 if(area.is_in_group("Platform")):
  grounded = true


	

