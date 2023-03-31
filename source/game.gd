extends Node2D


func _ready() -> void:
	JavaScript.eval("console.log('this works as expected')")
	JavaScript.eval("const m = document.getElementById('main'); console.log(m.clientWidth, m.clientHeight);")
	var a = JavaScript.eval("document.getElementById('main').clientWidth")
	print("From inside Godot: ", a)
