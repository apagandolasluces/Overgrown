extends Node2D

signal landed

const GRAVITY = 200

onready var hp = 50
onready var spd = 230
onready var grounded = false

var screen_size

func _ready():
 screen_size = get_viewport_rect().size
 set_process(true)
 pass

func _process(delta):
 if(!grounded):
  position.y += GRAVITY * delta
  #ground is at y = 504
 if(position.x < 40):
  position.x = 40
 if(position.x > screen_size.x - 40):
  position.x = screen_size.x - 40



func _on_Area2D_area_entered(area):
 if(area.is_in_group("Platform")):
  grounded = true
  emit_signal("landed")


func _on_Area2D_area_exited(area):
 if(area.is_in_group("Platform")):
  grounded = false


	

