extends Spatial

onready var resource_queue = get_node('/root/resource_queue')

enum loading_stagez{
	FADE_TO_BLACK_0,
	FADE_TO_LOADING,
	LOADING,
	FADE_TO_BLACK_1,
	FADE_TO_WORLD,
	RUNNING
}

enum stagez{
MAIN_MENU_STAGE,
LOADING_STAGE,
PAUSE_MENU_STAGE,
LVL_00
}

enum paperz {
newsaper,
DOCUMENTZ,
MEMOZ,
PASSPORT,
VISA,
TRANZIT
}

var loading_state = loading_stagez.RUNNING
var current_world = null
var loading_world = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
