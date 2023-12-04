extends Resource

class_name Inv

signal update

@export var slots: Array[InvSlot]

func insert(item : InvItem):
	var itemSlots = slots.filter(func(slot): return slot.item == null)
	itemSlots[0].item = item
	update.emit()

func remove(item : InvItem):
	var itemSlots = slots.filter(func(slot): return slot.item == item)
	itemSlots[0].item = null
	update.emit()
