extends Camera2D

var target: Node2D

func _ready() -> void:
	get_tardet()
	
func _process(delta: float) -> void:
	if not is_instance_valid(target):
		get_tardet()
		return 
		
	position = target.position
	
func get_tardet():
	var nodes = get_tree().get_nodes_in_group("Player")
	if nodes.size() > 0:
		target = nodes[0]
	
