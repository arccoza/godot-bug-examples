extends Node

var node = null
var rate = 0.1
var rate_timer = 0
var period = 0.2
var period_timer = 0


func _ready():
	node = $Sprite
	remove_child(node)

func _physics_process(delta):
	for c in get_children():
		c.tick(delta)
	
	rate_timer += delta
	
	if rate_timer >= rate:
		var dup = node.duplicate()
		var mis = Missile2D.new(dup)
#		mis.add_child(dup)
		add_child(mis)
		rate_timer -= rate
	
#	period_timer += delta
#
#	if period_timer >= period:
#		print("remove")
#		get_child(0).queue_free()
#		period_timer -= period


class Missile2D extends Node2D:
	var time = 0
	var lifetime = 2.0
	
	
	func _init(n):
		add_child(n)
	
	func tick(delta):
		time += delta
		
		if time >= lifetime:
			queue_free()
		else:
			position += Vector2(2, 0)
