
extends AnimatedSprite

signal landed

const GRAVITY = 200

onready var hp = 20
onready var spd = 200
onready var input
onready var mov = [Vector2(-spd, 0), Vector2(spd, 0)]
onready var grounded = false
onready var oob = false

var screen_size
var time = 0

func _ready():
 screen_size = get_viewport_rect().size
 define_input()
 set_process(true)
 pass

func _process(delta):
  #ground is at y = 504
 if(Input.is_key_pressed(KEY_RIGHT)):
    self.set_flip_h(false)
    time = time + delta
    if(time < 0.1):
       if(get_frame() == self.get_sprite_frames().get_frame_count("default")-1):
          set_frame(0)
       else:
          self.set_frame(get_frame() + 1)      
    time = 0
 if(Input.is_key_pressed(KEY_LEFT)):
    self.set_flip_h(true)
    time = time + delta
    if(time < 0.1):
       if(get_frame() == self.get_sprite_frames().get_frame_count("default")-1):
          set_frame(0)
       else:
          self.set_frame(get_frame() + 1)   
    time = 0
  

func define_input():
 input = ["ui_left", "ui_right"]


func _on_Area2D_area_entered(area):
 if(area.is_in_group("Platform")):
  grounded = true
  emit_signal("landed")


func _on_Area2D_area_exited(area):
 if(area.is_in_group("Platform")):
  grounded = false
  


func _on_Area2D_body_entered(body):
	if(body.get_name() == "tankbeetle" or body.get_name() == "worm" or body.get_name() == "ant"):
        body.queue_free()
