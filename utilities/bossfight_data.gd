extends Resource
class_name BossfightData

## The title of your bossfight
@export var title : String = "Bossfight"
## A short description of your bossfight. 
## If you write too much, it WILL be cut off.
@export var description : String = "Just a game"
## Texture displayed in the background when your game is hovered over
@export var texture : Texture2D
#TODO Tags
## Tags to display,  to be implemented
@export var tags : Array = []
## The root scene that runs your bossfight
@export var bossfight_scene : PackedScene
#TODO Storyline / Family of bossfight ID
#@export var family : int = -1
