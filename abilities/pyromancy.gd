extends MagicSchool

class_name PyromancySchool

enum PYROMANCY_SPELLS { FIREBALL }
var spells = {
	PYROMANCY_SPELLS.FIREBALL: 0
}


func _init():
	print("Initializing pyromancy...")
	school_name = "Pyromancy"
	self.spells[PYROMANCY_SPELLS.FIREBALL] = 1	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func process():
	print("Process!")
	if spells[PYROMANCY_SPELLS.FIREBALL] > 0:
		print("Would cast a fireball!")
