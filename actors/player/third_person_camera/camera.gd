extends SpringArm3D


## third person camera


# @export var mouse_sens: float = 0.1

@onready var player: Player = owner
# clamp vertical
@onready var max_rad := deg_to_rad(50)
@onready var min_rad := deg_to_rad(-70)

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if event.relative:
			mouse_camera_rotation(event)


## mover la camara con el mouse
func mouse_camera_rotation(event) -> void:
	# rotates horizontal
	player.rotate_y(deg_to_rad(-event.relative.x  * player.mouse_sens))


	# rotates vertical
	rotate_x(deg_to_rad(-event.relative.y * player.mouse_sens))
	rotation.x = clamp(rotation.x, min_rad, max_rad)

	rotation.z = clamp(rotation.z, 0, 0)
	
