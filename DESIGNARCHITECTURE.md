# Design Decisions and Architecture
## Description
### Example
Design: Player Character (Pirate) - Architecture: 2DPlayerBody

## Autoloads (Global Scripts)
- const TILE_PIXELS: to standardise tile size everywhere

## Game - Architecture: Node
### Description
This should be a scene / node that contains the grid, players, UI and manages win conditions, etc. based on the interactions between the two

## Playable Area - Architecture: Node
### Script
Custom GameGrid class
### Nodes
### Variables
- grid_coords: (export) stores size of map
- tile classes as PackedScenes for random initialisation
- grid_items: array to store generated map
- visible_grid: array to store visible map
### Methods
- initialise_grid():
	randomly generates the map
- get_index_from_coords(Vector2 coords):
	gets array index based from coordinates
- uncover_tile_at_coords(Vector2 coords):
	updates visible_grid and grid visuals

## Tile - Architecture: Node2D
### Script
Custom Tile Resource
### Description
Use a Resource or Node - Resources as tiles are fairly static and the values shouldn't really change
### Nodes
- Sprite

## Wonder - Architecture: Node2D (inherits from Tile)
### Script
Inherit from Tile class
### Variables
- PointValue: exploration points

## Player - Architecture: Node2D
### Script
Custom player class
### Nodes
- Camera: 
so player can move freely around the map without being restricted by vision
- Sprite
### Variables
- coords: (Vector2) coordinates of the player
- points: (int) points
### Methods
- move(Vector2 move_to) : move based on the value of move_to (e.g move_to = (0, 1))

## Enemy - Architecture: Node2D (inherits from Tile)
Custom enemy class
### Nodes
- Sprite
### Variables
- AttackDamage
### Methods
- attack()

## Cards - Architecture: Resource
Cards are obtained as a combat reward by defeating barbarians, or by exploring rare landmarks. Players can choose from 3 random cards.

Classes:
**Combat**
Deal x damage to enemies within 1 space
**Defence**
Avoid next combat
**Exploration**
Move 3 spaces instead of 1
**Recruitment**
Gain 1 Viking
**Raiding**
Steal a card from a player
### Nodes
- Texture2D

## Interactions
When a player enters a new tile, this triggers an interaction.
Each player starts with 3 henchmen that can explore independantly. In a single player turn each henchman can either:

- move: move one tile at a time
- attack: attack another player in vicinity
- use card: activate card

exploration : each player uses their henchmen
combat : can occur in 2 ways
- if a player uses "attack" on a nearby henchmen
- if 2 or more henchmen land on the same tile Once players have done everything in their turn they press 'ready'. Player turns take place based on who pressed 'next turn' first.

## UI
Text-based, grid style.
