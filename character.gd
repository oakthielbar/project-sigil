extends Resource

export(String) var name
export(int) var health
export(float) var move_speed

func _init(p_name = "", p_health = 0, p_move_speed = 0):
	name = p_name
	health = p_health
	move_speed = p_move_speed
