extends Node2D
# This demo is an example of controling a high number of 2D objects with logic
# and collision without using nodes in the scene. This technique is a lot more
# efficient than using instancing and nodes, but requires more programming and
# is less visual. Bullets are managed together in the `bullets.gd` script.

# The number of bullets currently touched by the player.
var touching = 0

export(Resource) var character

onready var sprite = $AnimatedSprite


func _ready():
	# The player follows the mouse cursor automatically, so there's no point
	# in displaying the mouse cursor.
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _process(delta):
	var move_vec: Vector2
	if Input.is_action_pressed("move_up"):
		move_vec += Vector2(0, -1)
	if Input.is_action_pressed("move_left"):
		move_vec += Vector2(-1, 0)
	if Input.is_action_pressed("move_down"):
		move_vec += Vector2(0, 1)
	if Input.is_action_pressed("move_right"):
		move_vec += Vector2(1, 0)

	position += move_vec * character.move_speed


func _on_body_shape_entered(_body_id, _body, _body_shape, _local_shape):
	touching += 1
	if touching >= 1:
		sprite.frame = 1


func _on_body_shape_exited(_body_id, _body, _body_shape, _local_shape):
	touching -= 1
	if touching == 0:
		sprite.frame = 0
