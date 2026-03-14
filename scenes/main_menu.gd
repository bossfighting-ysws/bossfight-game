extends BossfightMenuBase
class_name MainMenu

const SELECT_MENU = preload("res://scenes/select_menu.tscn")

@export var buttons : Array[Button] = []
var tweenables : Array[Tweenable]

func _ready() -> void:
	for button in buttons:
		button.pressed.connect(_on_but_pressed.bind(button.name))
	tweenables = BossfightMenuBase.get_all_tweenables(self)
	start_anim()


func start_anim():
	pass

func end_anim():
	pass


func _on_but_pressed(button_name:String):
	print("Button pressed, name is: %s" % button_name)
	match button_name.to_lower():
		"play":
			get_tree().change_scene_to_packed(SELECT_MENU)
		"settings":
			pass
		"explanation":
			pass
		"quit":
			get_tree().quit()
