extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_accept") :
		get_tree().paused = false
		queue_free()
     #continue code or scene switch
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
