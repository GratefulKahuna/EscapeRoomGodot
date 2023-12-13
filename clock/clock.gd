extends Control

@onready var hourangle = $clock/Hours.rotation_degrees
@onready var minuteangle = $clock/Minutes.rotation_degrees
@onready var rotating_hour = false
@onready var rotating_minute = false

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if rotating_hour==true:
			hourangle += 30
			$clock/Hours.rotation_degrees = hourangle
		elif rotating_minute==true:
			minuteangle += 30
			$clock/Minutes.rotation_degrees = minuteangle

func _on_controlminute_mouse_entered():
	print("rotating_minute = true")
	rotating_minute = true

func _on_controlhour_mouse_entered():
	print("rotating_hour = true")
	rotating_hour = true

func _on_controlminute_mouse_exited():
	print("rotating_minute = false")
	rotating_minute = false

func _on_controlhour_mouse_exited():
	print("rotating_hour = false")
	rotating_hour = false
