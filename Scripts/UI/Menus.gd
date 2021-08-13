extends PanelContainer


signal play()
signal load_game()
signal quit_game()
signal settings()

# Called when the node enters the scene tree for the first time.
func _ready():
	find_buttons()
	location_settings()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	location_settings()
	pass

func find_buttons():
	for child in get_children():
		if child.get_child_count() > 0:
			for grandchild in child.get_children():
				find_button(grandchild)
		else:
			find_button(child)

func find_button(button):
	if button is Button:
		if button.name in ["Play","Load","Quit","Settings"]:
			button.connect("pressed",self,"_on_pressed",[button.name])
			
func _on_pressed(name):
	match name:
		"Play":
			emit_signal("play")
		"Load":
			emit_signal("load_game")
		"Quit":
			emit_signal("quit_game")
		"Settings":
			emit_signal("settings")

func location_settings():
	match name:
		"CenterMenu":
			$VBoxContainer.rect_min_size.y = get_parent().rect_size.y * 0.8
			$VBoxContainer.rect_size.y = get_parent().rect_size.y * 0.8
			$VBoxContainer.rect_min_size.x = get_parent().rect_size.y * 0.7
			$VBoxContainer.rect_size.x = get_parent().rect_size.y * 0.7
			set_anchors_and_margins_preset(Control.PRESET_CENTER)
		"RightMenu":
			set_anchors_and_margins_preset(Control.PRESET_RIGHT_WIDE)
			$VBoxContainer.rect_min_size.x = get_parent().rect_size.x * 0.4
			$VBoxContainer.rect_size.x = get_parent().rect_size.x * 0.4
			
		"LeftMenu":
			set_anchors_and_margins_preset(Control.PRESET_LEFT_WIDE)
			$VBoxContainer.rect_min_size.x = get_parent().rect_size.x * 0.4
			$VBoxContainer.rect_size.x = get_parent().rect_size.x * 0.4
		"FullMenu":
			set_anchors_and_margins_preset(Control.PRESET_WIDE)
			$VBoxContainer.rect_min_size.y = get_parent().rect_size.y * 0.9
			$VBoxContainer.rect_size.y = get_parent().rect_size.y * 0.9
			$VBoxContainer.rect_min_size.x = get_parent().rect_size.x * 0.9
			$VBoxContainer.rect_size.x = get_parent().rect_size.x * 0.9
			
