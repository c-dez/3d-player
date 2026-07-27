extends Node

## Usado para asignar las teclas de movimiento y salto por default, borrar este nodo cuando se quieran asignar desde Egine


var keybindings: Array = [
    'left',
    'right',
    'up',
    'down',
    'jump'
]


func _ready() -> void:
    set_keybinding(keybindings)


func set_keybinding(keys: Array) -> void:
    for key in keys:
        InputMap.add_action(key)
        var evento = InputEventKey.new()
        match key:
            'left':
                evento.keycode = KEY_A
            'right':
                evento.keycode = KEY_D
            'up':
                evento.keycode = KEY_W
            'down':
                evento.keycode = KEY_S
            'jump':
                evento.keycode = KEY_SPACE

        InputMap.action_add_event(key, evento)
