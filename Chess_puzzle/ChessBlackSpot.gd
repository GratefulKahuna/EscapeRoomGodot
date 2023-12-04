extends Panel

class_name chessSquare

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
		if selected:
			var currently_selected = Global.selectedChessSquare
			var current_slot = Global.selectedSlot
			if currently_selected and currently_selected != self:
				if currently_selected.current_item and !current_item:
					item_visual = currently_selected.current_item.texture
					current_item = currently_selected.current_item
					currently_selected.current_item = null
					slot_visual.texture = load("res://art/chess/ChessBlackSpot.png") # change to selected texture
					
				currently_selected.slot_visual.texture = load("res://art/chess/ChessBlackSpot.png")
				currently_selected.selected = !currently_selected.selected
				
			Global.selectedChessSquare = self
			slot_visual.texture = load("res://art/chess/ChessBlackSpot.png") # change to selected texture

		else:
			Global.selectedChessSquare = null
			slot_visual.texture = load("res://art/chess/ChessBlackSpot.png")
