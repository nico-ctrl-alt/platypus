extends CharacterBody3D
class_name Player

@export var speed = 1.0
@export var health = 100.0
#this is a pretty easy way to implement status effects
@export var status_effects = {
	"poison" : 0.0,
	"fire" : 0.0,
	"low_gravity" : 0.0,
	"electric" : 0.0}



func _process_effects(delta: float) -> void :
	#decrease status effect timer with delta
	for i in status_effects :
		status_effects[i] -= delta
		#use if statements in here to process how the status effects work
		#maybe we could find a way to track the exit and start? ex. status_effect_exit()
