extends Node2D

signal landed
onready var grounded = false

class tankbeetle:
	var pos;
	var end;
	var frame = 0;
	var aim = Vector2(0,0);
	var time = 0;
	var len_ray = 200;
	var ray1 = Vector2(0,0);
	var ray2 = Vector2(0,0);
	func _init(arg1, arg2): 
		pos = arg1; 
		end = arg2
	

	
		


func _on_Area2D_area_entered(area):
 if(area.is_in_group("Platform")):
  grounded = true
  emit_signal("landed")


func _on_Area2D_area_exited(area):
 if(area.is_in_group("Platform")):
  grounded = false


	

