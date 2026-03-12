class_name GameGrid extends PanelContainer

@export var grid_coords: Vector2i
@export var grid_box: PackedScene

const TILE_PIXELS = 64

var grid_items = Array()

@onready var grid = get_node("GridContainer")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	grid.columns = grid_coords.x
	self.custom_minimum_size = grid_coords * TILE_PIXELS
	initialise_grid()


# Initialises grid background tiles
func initialise_grid() -> void:
	for col in grid_coords.x:
		for row in grid_coords.y:
			var box = grid_box.instantiate()
			grid.add_child(box)
