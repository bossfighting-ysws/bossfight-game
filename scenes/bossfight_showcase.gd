@tool
extends Panel
class_name BossfightShowcase

@export_group("Nodes")
@export var title_label : RichTextLabel
@export var description_label : RichTextLabel
@export_category("Variables")
@export var bossfight_data : BossfightData :
	set(v):
		if bossfight_data == v: return
		bossfight_data = v
		_update_labels()
var null_title := "Missing"
var null_description := "If you see this, something is wrong. BossfightData missing?"

func _ready() -> void:
	_update_labels()

func _process(_delta: float) -> void:
	if Engine.is_editor_hint():
		_update_labels()

func _update_labels() -> void:
	if bossfight_data == null: return
	
	var title_text = bossfight_data.title if title_label else null_title
	title_label.clear()
	title_label.append_text(title_text)
	var description_text = bossfight_data.description if description_label else null_description
	description_label.clear()
	description_label.append_text(description_text)
