extends BossfightMenuBase
class_name SelectMenu

const SHOWCASE_SCENE = preload("res://scenes/bossfight_showcase.tscn")
@export_group("Nodes")
@export var selector : RadialSelector
@export var texture_rect : TextureRect
var tweenables : Array[Tweenable] = []

func _ready() -> void:
	tweenables = BossfightMenuBase.get_all_tweenables(self)
	if selector: selector.closest_child_changed.connect(_on_selected_changed)
	_load_bossfights()

func _load_bossfights() -> void:
	var bossfights = BossfightDatabase.get_all_bossfights()
	for child in selector.get_children():
		if child is BossfightShowcase:
			child.queue_free()
	for bf in bossfights:
		var inst = SHOWCASE_SCENE.instantiate() as BossfightShowcase
		inst.bossfight_data = bf
		if not inst: return
		selector.add_child(inst)

func _on_selected_changed(child:Control, _idx:int):
	var showcase := child as BossfightShowcase
	if not showcase or not showcase.bossfight_data: 
		_clear_showcase()
		return
	var tex = showcase.bossfight_data.texture
	if tex and texture_rect:
		texture_rect.texture = tex

func _clear_showcase() -> void:
	if texture_rect:
		texture_rect.texture = null

func start_anim():
	pass

func end_anim():
	pass
