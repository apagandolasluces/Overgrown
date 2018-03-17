extends Node2D

signal landed

const GRAVITY = 200

onready var hp = 20
onready var spd = 200
onready var input
onready var mov = [Vector2(-spd, 0), Vector2(spd, 0)]
onready var grounded = false
onready var oob = false

func _ready():
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

func define_input():
 input = ["ui_left", "ui_right"]


func _on_Area2D_area_entered(area):
 if(area.is_in_group("Platform")):
  grounded = true
  emit_signal("landed")


func _on_Area2D_area_exited(area):
 if(area.is_in_group("Platform")):
  grounded = false


	

