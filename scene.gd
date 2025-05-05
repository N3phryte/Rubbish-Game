extends Node3D
var rubbish = preload("res://rubbish.tscn")
@export var rubbish_amount : int = 10
@onready var mapSize : float = 25

func _ready() -> void:
			for i in range(1, rubbish_amount + 1):
				var instance = rubbish.instantiate()
				get_tree().root.get_node("Node3D").add_child(instance)
				instance.global_position = Vector3(randf_range(-mapSize, mapSize), 0.75, randf_range(-mapSize, mapSize))
