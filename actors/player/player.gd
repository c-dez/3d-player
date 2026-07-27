extends CharacterBody3D

class_name Player

#export
@export var speed: float = 10.0

# jump _gravity
@export var jump_height: float = 5.0
@export var jump_time_to_peak: float = 0.5
@export var jump_time_to_descend: float = 0.4
var _jump_velocity: float
var _jump_gravity: float
var _jump_fall_gravity: float
####


func _ready() -> void:
    _calculate_jump_gravity()
    pass


func _physics_process(delta: float) -> void:
    _gravity(delta)
    move(speed)
    move_and_slide()
    pass


func move(_speed: float) -> void:
    var input := _get_input()
    var direction := (transform.basis * Vector3(input.x, 0, input.y)).normalized()

    # velocity.x = direction.x * _speed
    # velocity.z = direction.z * _speed
    velocity = direction * _speed
    pass

##-private--
func _gravity(delta: float) -> void:
    if not is_on_floor():
        if velocity.y < 0.0:
            velocity.y -= _jump_fall_gravity * delta
        else:
            velocity.y -= _jump_gravity * delta


func _calculate_jump_gravity() -> void:
    _jump_velocity = 2.0 * jump_height / jump_time_to_peak
    _jump_gravity = 2.0 * jump_height / (jump_time_to_peak * jump_time_to_peak)
    _jump_fall_gravity = 2.0 * jump_height / (jump_time_to_descend * jump_time_to_descend)

## Player input
func _get_input() -> Vector2:
    var input := Input.get_vector("left", "right", "up", "down")
    return input