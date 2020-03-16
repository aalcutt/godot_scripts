extends TextureProgress

var green_health_bar = preload("res://assets/horizontal_bar_green.png")
var yellow_health_bar = preload("res://assets/horizontal_bar_yellow.png")
var red_health_bar = preload("res://assets/horizontal_bar_red.png")

var yellow_health_tier = 40
var red_health_tier = 20

func _ready():
	init(100)
	pass
	
func init(max_health):
	max_value = max_health
	if(max_value > 2):
		var aThird = max_value / 3
		yellow_health_tier = max_value - aThird
		red_health_tier = yellow_health_tier - aThird
	else:
		yellow_health_tier = 2
		red_health_tier = 2
		

func set_health(val):
	var texture = green_health_bar
	if(val < yellow_health_tier):
		texture = yellow_health_bar
	if(val < red_health_tier):
		texture = red_health_bar
	
	set_value(val)
	set_progress_texture(texture)