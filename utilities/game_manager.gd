extends Node

enum State {
	MENU,
	PAUSED,
	PLAYING,
}
var current_state : State = State.MENU
func is_paused() -> bool:
	return current_state == State.PAUSED
