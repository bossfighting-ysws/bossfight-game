extends Resource
class_name BossfightData

## The title of your bossfight
@export var title : String = "Bossfight"
## A short description of your bossfight. 
## If you write too much, it WILL be cut off.
@export var description : String = "Just a game"
## Texture displayed in the background when your game is hovered over
## The root scene that runs your bossfight
@export var bossfight_scene : PackedScene
## In the bossfight select screen, this will be shown on the left
@export var texture : Texture2D
@export_group("Optional Texture Specifics", "texture_")
@export var texture_stretch_mode := TextureRect.StretchMode.STRETCH_SCALE
@export var texture_expand_mode := TextureRect.ExpandMode.EXPAND_FIT_WIDTH_PROPORTIONAL
#TODO Tags
## Tags to display,  to be implemented
@export var tags : Array = []
#TODO Storyline / Family of bossfight ID
#@export var family : int = -1
