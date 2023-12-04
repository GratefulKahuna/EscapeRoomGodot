extends chessSquare

class_name whiteSquare

var blackSquare = preload("res://Chess_puzzle/ChessBlackSpot.gd")

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

func unselect():
	slot_visual.texture = load("res://art/chess/ChessWhiteSpot.png")
	selected = false
	
func select():
	slot_visual.texture = load("res://art/chess/ChessWhiteSpotSelected.png")
	Global.selectedChessSquare = self

func _on_gui_input(event):
	if Input.is_action_just_pressed("leftMB"):
		selected = !selected
		if selected:
			var prev_selected = Global.selectedChessSquare
			var current_slot = Global.selectedSlot
			
			if current_slot and Global.isChessPiece(current_slot.current_item):
				if !current_item:
					current_item = current_slot.current_item
					item_visual.texture = current_item.texture
					if prev_selected:
						prev_selected.unselect()
					
					Global.selectedChessSquare = self
					current_slot.current_item = null
					Global.inv.remove(current_item)
					current_slot.unselect()
					
			elif prev_selected and prev_selected != self:
				if prev_selected.current_item and !current_item:
					item_visual.texture = prev_selected.current_item.texture
					current_item = prev_selected.current_item
					prev_selected.current_item = null
					prev_selected.item_visual.texture = null
					prev_selected.unselect()
				else:
					
					prev_selected.unselect()
				select()
			
			elif prev_selected and prev_selected == self:
				slot_visual.texture = load("res://art/chess/ChessWhiteSpot.png")
				Global.selectedChessSquare = null
				
			else:
				if prev_selected:
					prev_selected.unselect()
				Global.selectedChessSquare = self
				slot_visual.texture = load("res://art/chess/ChessWhiteSpotSelected.png")
				
		else:
			Global.selectedChessSquare = null
			slot_visual.texture = load("res://art/chess/ChessWhiteSpot.png")
