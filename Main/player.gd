extends CharacterBody2D

var move_speed: float = 100.0
var jump_force: float = 300.0
var gravity: float = 500.0
var score: int = 0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y = 100
		
	velocity.x = 0
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= move_speed
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += move_speed
			
	if Input.is_key_pressed(KEY_SPACE):
		velocity.y = -jump_force
		
	if self.position.y > 106:
		game_over()
	
	move_and_slide()
	
	
func game_over():
	get_tree().reload_current_scene()
	
func add_score(amount):
	score += amount
	print(score)
	
	
	
	
