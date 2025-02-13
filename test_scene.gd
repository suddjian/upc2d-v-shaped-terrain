extends Node

var character_scene = preload("res://character_body_2d.tscn")
var patched_script = preload("res://addons/Ultimate-Platformer-Controller-2D/UltimatePlatformerController.gd")
var unpatched_script = preload("res://UltimatePlatformerController_prepatch.gd")

@export var character: CharacterBody2D


func _on_spawn_pressed() -> void:
	character.global_position = %SpawnPoint.global_position
	character.reset_physics_interpolation()
	

func _on_use_patch_toggled(toggled_on: bool) -> void:
	var script = patched_script if toggled_on else unpatched_script
	character.set_script(script)
	character.PlayerSprite = character.get_node("Sprite")
	character.PlayerCollider = character.get_node("Collider")
	character._ready()
