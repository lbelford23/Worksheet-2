extends Path2D

@export var player:Node2D
@export var target_node:Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var angle_radians = player.get_angle_to(target_node.position)
	var angle_degrees = rad_to_deg(angle_radians)
	var path_progress = abs((angle_degrees + 90) / 360)
	$PathFollow2D.progress_ratio = path_progress
	
