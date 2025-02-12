extends Node

var character_scene = preload("res://character_body_2d.tscn")
var patched_script = preload("res://addons/Ultimate-Platformer-Controller-2D/UltimatePlatformerController.gd")

var character: CharacterBody2D = null

func spawn_character(script=null):
	if character:
		character.queue_free()
	character = character_scene.instantiate()
	if script:
		character.set_script(script)
		character.PlayerSprite = character.get_node("Sprite")
		character.PlayerCollider = character.get_node("Collider")
	character.global_position = %SpawnPoint.global_position
	character.reset_physics_interpolation()
	add_child(character)

func _on_use_unpatched_controller_pressed() -> void:
	spawn_character()

func _on_use_patched_controller_pressed() -> void:
	spawn_character(patched_script)
