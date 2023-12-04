extends Panel

class_name slotPanel

@onready var item_visual : Sprite2D = $CenterContainer/Panel/Sprite2D
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

func unselect():
	selected = false
	Global.selectedSlot = null
	slot_visual.texture = load("res://art/Inventory_Slot_1.png")
	
func select():
	selected = true
	Global.selectedSlot = self
	slot_visual.texture = load("res://inventory/items/item 2-1.png.png")


func _on_gui_input(event):
	if Input.is_action_just_pressed("leftMB"):
		selected = !selected
		var prev_selected = Global.selectedSlot
		if selected and current_item:
			if prev_selected and prev_selected != self:
				prev_selected.slot_visual.texture = load("res://art/Inventory_Slot_1.png")
				prev_selected.selected = !prev_selected.selected
			
			select()
#			Global.selectedSlot = self
#			slot_visual.texture = load("res://inventory/items/item 2-1.png.png")
		elif prev_selected and !current_item:
			selected = false
		else:
			unselect()
#			Global.selectedSlot = null
#			slot_visual.texture = load("res://art/Inventory_Slot_1.png")
