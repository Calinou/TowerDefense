extends Node

# Degrees per radian
const DEG_PER_RAD = 57.295779513

# Interval of time before a dead unit is removed from the screen
const DEAD_CLEAN_INTVAL = 3.0

const COLOR_GOLD = "#ffda80"
const COLOR_RED  = "#ff4444"

var current_level = null
var cash = 10
var health = 5


func _ready():
	var root = get_tree().get_root()
	current_level = root.get_child( root.get_child_count() - 1)


func hit_fortress(damage):
	health -= damage
	if health <= 0:
		current_level.get_node("GameOverFrame").show()
