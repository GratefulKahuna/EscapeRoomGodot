extends Control

@onready var hourangle = $clock/Hours.rotation_degrees
@onready var minuteangle = $clock/Minutes.rotation_degrees
@onready var rotating_hour = false
@onready var rotating_minute = false
@onready var right_hour = false
@onready var right_minute = false
@onready var rotationhour = 3
@onready var rotationminute = 9

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if rotating_hour==true:
			hourangle += 30
			$clock/Hours.rotation_degrees = hourangle
			rotationhour += 1
			if (rotationhour % 12 == 2):
				right_hour = true
				print("right hour")
			else:
				right_hour = false
		elif rotating_minute==true:
			minuteangle += 30
			$clock/Minutes.rotation_degrees = minuteangle
			rotationminute += 1
			if (rotationminute % 12 == 5):
				right_minute = true
				print("right minute")
			else:
				right_minute = false
		if right_hour and right_minute:
			print("correct time")

func _on_controlminute_mouse_entered():
	rotating_minute = true

func _on_controlhour_mouse_entered():
	rotating_hour = true

func _on_controlminute_mouse_exited():
	rotating_minute = false

func _on_controlhour_mouse_exited():
	rotating_hour = false
