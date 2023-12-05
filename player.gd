extends RigidBody2D


func _integrate_forces(state):
	linear_velocity.x = 500


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Jump"):
		apply_central_impulse(Vector2(0, -1000))


func _on_body_entered(body):
	get_tree().reload_current_scene()
