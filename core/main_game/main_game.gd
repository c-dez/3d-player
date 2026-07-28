extends Node3D
class_name MainGame

## Escena root de el juego, se encarga de contener todas las escenas que componen el juego (world, player, ui, etc)


@onready var level_root: Node3D = get_node('World/LevelRoot')
@onready var entity_root: Node3D = get_node('World/EntityRoot')


func _ready() -> void:
	load_player()
	load_level(LevelPath.TEST_LEVELS["level_1"])


func load_level(_level_path: String) -> void:
	var level: PackedScene = load(_level_path)
	var l := level.instantiate()
	level_root.add_child(l)

	var player: Player = get_tree().get_first_node_in_group('player')
	## Usado temporalmente por que el origin de el player no se encuentra en el suelo, cuando implemente un modelo se tiene que poner el origin en el suelo aunque el mesh es el que cambio el origin no el characterBody
	var height_offset: float = 1.0

	# player.global_position = Vector3(l.spawn_point.x,l.spawn_point.y + height_offset, l.spawn_point.z)
	var spawn = l.get_node('Spawn').global_position
	player.global_position =spawn
	player.global_position.y += height_offset


func load_player() -> void:
	var player: PackedScene = load('res://gameplay/characters/player/player.tscn')
	var p := player.instantiate()
	entity_root.add_child(p)
