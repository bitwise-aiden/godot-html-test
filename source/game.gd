extends Control


onready var cursor: ColorRect = $cursor

func _ready() -> void:
	JavaScript.eval("console.log('this works as expected')")
	JavaScript.eval("const m = document.getElementById('main'); console.log(m.clientWidth, m.clientHeight);")
	var a = JavaScript.eval("document.getElementById('main').clientWidth")
	print("From inside Godot: ", a)


func _process(delta: float) -> void:
	var position: Vector2 = get_global_mouse_position()

	cursor.rect_position = position - Vector2(10.0, 10.0)
