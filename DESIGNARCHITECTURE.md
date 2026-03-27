# Design Decisions and Architecture
## Description
Page used to document design decision and code architecture. Scripts attached to architecture are not necessary.
If wanting to implement a new abstract class, name that as the heading (##). 
And then design is its name, and architecture is the type

## Example
-------------------
## Player
Design: playerCharacter - Architecture: 2DPlayerBody

-------------------

## Playable Area



## Tile 
### Nodes
- Sprite

## Wonder - Custom tile class
### Variables
- PointValue

## Player - Custom player class


## Enemy - Custom enemy class
### Nodes
- Sprite

## Cards
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

Items:
- Each henchmen can pick up items from the tile they are in
- Items can be equipped or stored in the inventory
- Items can dropped onto the tile by the player
- 

## UI
Text-based, grid style.
