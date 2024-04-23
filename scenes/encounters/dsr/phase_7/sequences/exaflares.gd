extends Node

@onready var exaflare_controller: ExaflareController = %ExaflareController
@onready var exaflare_anim: AnimationPlayer = %ExaflareAnim
@onready var enemies_layer: Node3D = get_tree().get_first_node_in_group("enemies_layer")

var boss: P7Boss
var boss_scene_path := "res://assets/objects/dkt/dkt_alpha/dragonking.tscn"
var load_progress := []


func start_sequence(_new_party: Dictionary) -> void:
	var boss_scene := GlobalRes.get_scene("dkt")
	boss = boss_scene.instantiate()
	enemies_layer.add_child(boss)
	exaflare_anim.play("exaflare")
	exaflare_controller.pre_load()


func start_exaflare() -> void:
	exaflare_controller.spawn_exaflares()
