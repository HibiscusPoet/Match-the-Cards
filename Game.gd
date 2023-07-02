extends Control

@onready var gridContainer = $CenterContainer/GridContainer

@export var cardArray:Array[Texture] = []

# Called when the node enters the scene tree for the first time.
func _ready():
	gridContainer.columns = Values.numberOfColumns
	create_cards()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func create_cards():
	var newCard
	
	for i in Values.numberOfColumns:
		for j in Values.numberOfRows:
			newCard = TextureRect.new()
			gridContainer.add_child(newCard)
			randomize()
			newCard.texture = cardArray[randi_range(0, cardArray.size() - 1)]
