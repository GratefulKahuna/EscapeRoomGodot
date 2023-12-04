extends Control


@onready var slots: Array = $NinePatchRect/GridContainer.get_children()


func _ready():
	Global.inv.update.connect(update_slots)
	update_slots()

func update_slots():
	for i in range(min(Global.inv.slots.size(), slots.size())):
		slots[i].update(Global.inv.slots[i])


func _on_apple_add_item(item):
	Global.inv.insert(item)


func _on_chess_pawn_add_item(item):
	Global.inv.insert(item)


func _on_chess_rook_add_item(item):
	Global.inv.insert(item)
