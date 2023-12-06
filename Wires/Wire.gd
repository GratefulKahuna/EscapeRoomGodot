extends Node2D

@onready var redleft = false
@onready var blueleft = false
@onready var greenleft = false
@onready var yellowleft = false
@onready var redright = false
@onready var blueright = false
@onready var greenright = false
@onready var yellowright = false
@onready var redleftclicked = false
@onready var blueleftclicked = false
@onready var yellowleftclicked = false
@onready var greenleftclicked = false
@onready var redcorrect = false
@onready var greencorrect = false
@onready var yellowcorrect = false
@onready var bluecorrect = false

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if (redleft or blueleft or greenleft or yellowleft):
			if redleft:
				redleftclicked = true
			elif blueleft:
				blueleftclicked = true
			elif greenleft:
				greenleftclicked = true
			elif yellowleft:
				yellowleftclicked = true
		elif (redright or blueright or greenright or yellowright):
			if redright:
				if redleftclicked:
					$connection/Redconnection/wire.visible = false
					$connection/Redconnection/wire2.visible = false
					$connection/Redconnection/wire3.visible = false
					$connection/Redconnection/wire4.visible = true
					redleftclicked = false
					redcorrect = true
				elif blueleftclicked:
					$connection/Blueconnection/wire.visible = false
					$connection/Blueconnection/wire2.visible = false
					$connection/Blueconnection/wire3.visible = false
					$connection/Blueconnection/wire4.visible = true
					blueleftclicked = false
					bluecorrect = false
				elif yellowleftclicked:
					$connection/Yellowconnection/wire.visible = false
					$connection/Yellowconnection/wire2.visible = false
					$connection/Yellowconnection/wire3.visible = false
					$connection/Yellowconnection/wire4.visible = true
					yellowleftclicked = false
					yellowcorrect = false
				elif greenleftclicked:
					$connection/Greenconnection/wire.visible = false
					$connection/Greenconnection/wire2.visible = false
					$connection/Greenconnection/wire3.visible = false
					$connection/Greenconnection/wire4.visible = true
					greenleftclicked = false
					greencorrect = false
			elif blueright:
				if redleftclicked:
					$connection/Redconnection/wire.visible = false
					$connection/Redconnection/wire2.visible = false
					$connection/Redconnection/wire4.visible = false
					$connection/Redconnection/wire3.visible = true
					redcorrect = false
					redleftclicked = false
				elif blueleftclicked:
					$connection/Blueconnection/wire.visible = false
					$connection/Blueconnection/wire2.visible = false
					$connection/Blueconnection/wire4.visible = false
					$connection/Blueconnection/wire3.visible = true
					bluecorrect = true
					blueleftclicked = false
				elif yellowleftclicked:
					$connection/Yellowconnection/wire.visible = false
					$connection/Yellowconnection/wire2.visible = false
					$connection/Yellowconnection/wire4.visible = false
					$connection/Yellowconnection/wire3.visible = true
					yellowcorrect = false
					yellowleftclicked = false
				elif greenleftclicked:
					$connection/Greenconnection/wire.visible = false
					$connection/Greenconnection/wire2.visible = false
					$connection/Greenconnection/wire4.visible = false
					$connection/Greenconnection/wire3.visible = true
					greencorrect = false
					greenleftclicked = false
			elif greenright:
				if redleftclicked:
					$connection/Redconnection/wire2.visible = false
					$connection/Redconnection/wire3.visible = false
					$connection/Redconnection/wire4.visible = false
					$connection/Redconnection/wire.visible = true
					redcorrect = false
					redleftclicked = false
				elif blueleftclicked:
					$connection/Blueconnection/wire3.visible = false
					$connection/Blueconnection/wire2.visible = false
					$connection/Blueconnection/wire4.visible = false
					$connection/Blueconnection/wire.visible = true
					bluecorrect = false
					blueleftclicked = false
				elif yellowleftclicked:
					$connection/Yellowconnection/wire3.visible = false
					$connection/Yellowconnection/wire2.visible = false
					$connection/Yellowconnection/wire4.visible = false
					$connection/Yellowconnection/wire.visible = true
					yellowleftclicked = false
					yellowcorrect = false
				elif greenleftclicked:
					$connection/Greenconnection/wire3.visible = false
					$connection/Greenconnection/wire2.visible = false
					$connection/Greenconnection/wire4.visible = false
					$connection/Greenconnection/wire.visible = true
					greencorrect = true
					greenleftclicked = false
			elif yellowright:
				if redleftclicked:
					$connection/Redconnection/wire.visible = false
					$connection/Redconnection/wire3.visible = false
					$connection/Redconnection/wire4.visible = false
					$connection/Redconnection/wire2.visible = true
					redcorrect = false
					redleftclicked = false
				elif blueleftclicked:
					$connection/Blueconnection/wire3.visible = false
					$connection/Blueconnection/wire.visible = false
					$connection/Blueconnection/wire4.visible = false
					$connection/Blueconnection/wire2.visible = true
					blueleftclicked = false
					bluecorrect = false
				elif yellowleftclicked:
					$connection/Yellowconnection/wire3.visible = false
					$connection/Yellowconnection/wire.visible = false
					$connection/Yellowconnection/wire4.visible = false
					$connection/Yellowconnection/wire2.visible = true
					yellowleftclicked = false
					yellowcorrect = true
				elif greenleftclicked:
					$connection/Greenconnection/wire3.visible = false
					$connection/Greenconnection/wire.visible = false
					$connection/Greenconnection/wire4.visible = false
					$connection/Greenconnection/wire2.visible = true
					greenleftclicked = false
					greencorrect = false
			if (redcorrect and bluecorrect and yellowcorrect and greencorrect):
				print("correct sequence")
				#put here the solution sound and signal to other scene !!!!!!!!!!!!!!

func _on_control_red_left_mouse_entered():
	redleft = true
	print("red in")


func _on_control_yellowleft_mouse_entered():
	yellowleft = true
	print("yellow in")


func _on_control_blueleft_mouse_entered():
	blueleft = true
	print("blue in")


func _on_control_greenleft_mouse_entered():
	greenleft = true
	print("green in")


func _on_control_redright_mouse_entered():
	redright = true
	print("red in")


func _on_control_yellowright_mouse_entered():
	yellowright = true
	print("yellow in")


func _on_control_blueright_mouse_entered():
	blueright = true
	print("blue in")


func _on_control_greenright_mouse_entered():
	greenright = true
	print("green in")


func _on_control_red_left_mouse_exited():
	redleft = false
	print("red out")


func _on_control_yellowleft_mouse_exited():
	yellowleft = false
	print("yellow out")


func _on_control_blueleft_mouse_exited():
	blueleft = false
	print("blue out")


func _on_control_greenleft_mouse_exited():
	greenleft = false
	print("green out")


func _on_control_redright_mouse_exited():
	redright = false
	print("red out")


func _on_control_yellowright_mouse_exited():
	yellowright = false
	print("yellow out")


func _on_control_blueright_mouse_exited():
	blueright = false
	print("blue out")


func _on_control_greenright_mouse_exited():
	greenright = false
	print("green out")
