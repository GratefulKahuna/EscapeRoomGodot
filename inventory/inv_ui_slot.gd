extends Panel

class_name slotPanel

@onready var item_visual : Sprite2D = $CenterContainer/Panel/item_display
@onready var slot_visual : Sprite2D = $Sprite2D

var current_item : InvItem = null
var selected = false

func update(slot: InvSlot) :
	if !slot.item:
		item_visual.visible = false
	else:
		item_visual.visible = true
		item_visual.texture = slot.item.texture
		current_item = slot.item


func _on_gui_input(event):
	if Input.is_action_just_pressed("leftMB"):
		selected = !selected
		if selected and current_item:
			var currenty_selected = Global.selectedSlot
			if currenty_selected and currenty_selected != self:
				currenty_selected.slot_visual.texture = load("res://art/Inventory_Slot_1.png")
				currenty_selected.selected = !currenty_selected.selected
				
			Global.selectedSlot = self
			slot_visual.texture = load("res://inventory/items/item 2-1.png.png")
		else:
			Global.selectedSlot = null
			slot_visual.texture = load("res://art/Inventory_Slot_1.png")
