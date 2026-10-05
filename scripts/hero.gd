class_name Hero extends CharacterBody2D

const SPEED : float = 100.0

# Called when character enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame; 'delta' is the elapsed time since the previous frame.	
func _process(delta: float) -> void:
	var direction : Vector2 = Vector2.ZERO
	direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	# Important note about direction.y below	
	direction.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	velocity = SPEED * direction
	
# In Godot 2D, the Y axis points down, like screen coordinates. \
# Position (0, 0) is the top-left, and a larger Y means lower on the screen:
# +x is right, -x is left
# +y is down, -y is up	
	
func _physics_process(delta: float) -> void:
	move_and_slide()
