extends Node

var pawn = preload("res://inventory/items/chess_pawn.tres")

var selectedSlot : slotPanel = null
#var selectedChessSquare : chessSquare = null
var random : chessSquare = null

func isChessPiece(item):
	return item == pawn
		

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
