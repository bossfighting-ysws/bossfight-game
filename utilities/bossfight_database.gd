extends Node

#TODO Figure out if there's a better way to do all_bossfights
## Array that contains all bossfights in the ysws.
## REMEMBER: Add your BossfightData resource to this list, or it won't show up.
var all_bossfights : Array[BossfightData] = [
	preload("res://bossfights/pixelsaver/pixelsaver_bossfight.tres")
	
]

func get_all_bossfights() -> Array[BossfightData]:
	var out : Array[BossfightData] = []
	for bf in all_bossfights:
		if is_bossfight_valid(bf):
			out.append(bf)
	return out

func is_bossfight_valid(bf:BossfightData) -> bool:
	if not bf: return false
	if not bf.bossfight_scene.can_instantiate(): return false
	if bf.title.is_empty(): return false
	if bf.description.is_empty(): return false
	return true
