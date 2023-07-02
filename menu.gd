extends Control

@onready var rowDropDownMenu = $VBoxContainer/rowDropDownMenu
@onready var columnDropDownMenu = $VBoxContainer/columnDropDownMenu

func _ready():
	add_row_items()
	add_column_items()

func add_row_items():
	rowDropDownMenu.add_item("2")
	rowDropDownMenu.add_item("4")
	rowDropDownMenu.add_item("6")
	rowDropDownMenu.add_item("8")
	
func add_column_items():
	columnDropDownMenu.add_item("2")
	columnDropDownMenu.add_item("4")
	columnDropDownMenu.add_item("6")
	columnDropDownMenu.add_item("8")

func _on_row_drop_down_menu_item_selected(index):
	var current_selected = index
	
	if current_selected == 0:
		Values.numberOfRows = 2
	if current_selected == 1:
		Values.numberOfRows = 4
	if current_selected == 2:
		Values.numberOfRows = 6
	if current_selected == 3:
		Values.numberOfRows = 8
	
func _on_column_drop_down_menu_item_selected(index):
	var current_selected = index
	
	if current_selected == 0:
		Values.numberOfColumns = 2
	if current_selected == 1:
		Values.numberOfColumns = 4
	if current_selected == 2:
		Values.numberOfColumns = 6
	if current_selected == 3:
		Values.numberOfColumns = 8

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Game.tscn")
