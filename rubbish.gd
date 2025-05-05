extends Area3D

func _ready() -> void:
	body_entered.connect(on_body_entered)

func on_body_entered(body: Node3D) -> void:
	if body is Player and body.has_rubbish == false:
		body.has_rubbish = true
		queue_free()
