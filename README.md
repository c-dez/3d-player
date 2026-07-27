# 3D Player Scene:
cambiar enfoque de el proyecto, quiero un template para empezar rapido un 3rd person 

## Objetivo
- Quiero que este proyecto contenga varias escenas para 3D y que estas escenas puedan usarse en otros proyectos con solo copiar la carpeta con la escena deseada a el nuevo proyecto y que estas escenas ya puedan configurarse facilmente o esten preconfiguradas, esten bien encapsuladas para que puedan funcionar "drop and play"

- Esto es para poder empezar la creacion de un prototipo lo mas pronto posible

## Como hacerlo:
- la carpeta player contiene todo lo que se necesita para que player pueda moverse
- asi puedo exportar este folder a otro godot poner el .tscn en la escena de juego y y ya tiene todo lo que necesita para funcionar y se autoconfigura los keybindings, esto para ahorrarme tiempo y no hacer el proceso de yo manualmente poner los bindings


## Instrucciones
- Copy paste carpeta player a nuevo proyecto de Godot

- Los bindings de movimiento son: "left,right,up,down" y 'jump', nodo README dentro de player los inicializa



## Ya Hecho:
- parametros exportados
- movimiento "wasd" 
- gravedad personalizable
- salto
- camara tercera persona  controlada por mouse
- asignar keybindings automaticamente 
- test_level.tscn
        
        
## TODO:
- Rotar skin 
    - Independiente de CharacterBody3D 
- First Person Camara
- Control para cambiar entre tercera y primera persona
- test level
- health

## Ideas:
- expandir a mas componentes
    - test level
    - start menu / pause
    - save 