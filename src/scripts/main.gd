extends Node

var time = 0


func _ready():
	pass


func _physics_process(delta):
	time += delta
	
	prints("---", time)
	if $RayCast2D.is_colliding():
		prints($RayCast2D.get_collider())
	
	if time > 5:
		$KinematicBody2D.shape_owner_set_disabled(0, true)
