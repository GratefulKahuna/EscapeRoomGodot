extends Area2D

@export var item: InvItem = preload("res://inventory/items/chess_pawn.tres")
var inside = false

signal addItem

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if inside and Input.is_action_just_pressed("leftMB"):
		emit_signal("addItem", item)
		queue_free()


func _on_mouse_entered():
	inside = true


func _on_mouse_exited():
	inside = false
