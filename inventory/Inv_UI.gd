extends Control

@onready var inv: Inv = preload("res://inventory/player_inventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()


func _ready():
	inv.update.connect(update_slots)
	update_slots()

func update_slots():
	for i in range(min(inv.slots.size(), slots.size())):
		slots[i].update(inv.slots[i])


func _on_apple_add_item(item):
	inv.insert(item)


func _on_chess_pawn_add_item(item):
	inv.insert(item)
