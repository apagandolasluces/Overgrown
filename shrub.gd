extends Node2D

signal landed

const GRAVITY = 200

onready var hp = 20
onready var spd = 200
onready var input
onready var mov = [Vector2(-spd, 0), Vector2(spd, 0)]
onready var grounded = false
onready var oob = false

var screen_size

func _ready():
 screen_size = get_viewport_rect().size
 define_input()
 set_process(true)
 pass

func _process(delta):
 for x in range(2): #0: up
  if(Input.is_action_pressed(input[x])):
   position += mov[x] * delta#position = position + move[x]
  elif(false):
   pass
  else:
   pass
 if(!grounded):
  position.y += GRAVITY * delta
  #ground is at y = 504
 if(position.x < 40):
  position.x = 40
 if(position.x > screen_size.x - 40):
  position.x = screen_size.x - 40

func define_input():
 input = ["ui_left", "ui_right"]


func _on_Area2D_area_entered(area):
 if(area.is_in_group("Platform")):
  grounded = true
  emit_signal("landed")


func _on_Area2D_area_exited(area):
 if(area.is_in_group("Platform")):
  grounded = false


	

