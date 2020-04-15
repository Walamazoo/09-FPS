extends Spatial

var Tree = preload("res://Scenes/tree_pineSmall_square1.tscn")
onready var Terrain = get_node("/root/Game/Terrain")

func _ready():
	for x in range(-100,100):
		for z in range(-100,100):
			if x % 3 == 0 and z % 3 == 0 and randf() < 0.5:
				if (x > 2 or x < -2) or (z > 2 or z < -2):
					var t = Tree.instance()
					t.translation = Vector3(x, 0, z)
					t.scale = Vector3(2.5,2.5,2.5)
					Terrain.add_child(t)
