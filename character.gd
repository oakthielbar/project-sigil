extends Resource

export(String) var name
export(int) var health
export(float) var move_speed
export(Array) var grimoires
func _init(p_name = "", p_health = 0, p_move_speed = 0):
	print("Initializing player...")
	name = p_name
	health = p_health
	move_speed = p_move_speed
	

func get_default_school():
	return PyromancySchool.new()
