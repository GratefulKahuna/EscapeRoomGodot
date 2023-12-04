extends Node

var pawn = preload("res://inventory/items/chess_pawn.tres")
var inv: Inv = preload("res://inventory/player_inventory.tres")

var selectedSlot : slotPanel = null
var selectedChessSquare : chessSquare = null

var slotFirst = false

func isChessPiece(item):
	print("testing, isChessPiece")
	return item == pawn
		

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if selectedSlot:
		if selectedChessSquare and slotFirst:
			slotFirst = !slotFirst
			selectedChessSquare.unselect()
			selectedChessSquare = null
	if selectedChessSquare:
		if selectedSlot:
			slotFirst = !slotFirst
			selectedSlot.unselect()
			selectedSlot = null
