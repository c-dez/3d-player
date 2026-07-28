extends Node3D
class_name MainGame

## Se encarga de organizar las escenas que forman el juego


@onready var level_root: Node3D = get_node('World/LevelRoot')
@onready var entity_root: Node3D = get_node('World/EntityRoot')
@onready var level_path: LevelsPaths = get_node('LevelsPaths')


func _ready() -> void:
    load_level(level_path.TEST_PATHS['test'])


func load_level(_level_path: String) -> void:
    var level: PackedScene = load(_level_path)
    var l := level.instantiate()
    level_root.add_child(l)
