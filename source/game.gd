extends Control


onready var cursor: ColorRect = $cursor

func _ready() -> void:
	get_tree().get_root().set_transparent_background(true)


func _process(delta: float) -> void:
	var position: Vector2 = get_global_mouse_position()

	position.x = min(1270.0, max(10.0, position.x))
	position.y = min( 710.0, max(10.0, position.y))

	cursor.rect_position = position - Vector2(10.0, 10.0)
