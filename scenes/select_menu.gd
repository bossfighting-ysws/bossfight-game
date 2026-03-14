extends BossfightMenuBase
class_name SelectMenu

var tweenables : Array[Tweenable] = []

func _ready() -> void:
	tweenables = BossfightMenuBase.get_all_tweenables(self)

func start_anim():
	pass

func end_anim():
	pass
