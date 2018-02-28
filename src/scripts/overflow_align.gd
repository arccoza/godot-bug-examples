extends LineEdit

export var auto = true
var time = 0


func _ready():
	pass

func _physics_process(delta):
	if auto:
		time += delta
		
		if time > 0.1:
			time = 0
			if text and text.length() < 200:
				text += "a"
			elif placeholder_text.length() < 200:
				placeholder_text += "a"
