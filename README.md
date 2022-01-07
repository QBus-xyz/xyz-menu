## Description
A different take on NUI menu. I like the simplified use of exports, the ability to use html style in the button text, and I added the ability to pass tables of data in the button actions. Continued work from BR-Menu. I tried to push a PR to his repo that was never merged, so here we are.

!(image)[https://i.imgur.com/aF3EktU.png]

## Usage
Within the code, the seqence of setting your Title bar, your sub-menu options, and your top level options is very important, and should be done so in that order.

### Title
 Simple string will do.
exports['xyz-menu']:SetTitle("Elevator Menu")

### Sub-group buttons
These are your options, within each "top-level" groupings.
exports['xyz-menu']:AddButton("First Floor", "Head to the first floor lobby", 'client', 'qb-smallresources:client:teleport', 1, 'ElevatorList', 1)
exports['xyz-menu']:AddButton("Second Floor", "Head to the second floor", 'client', 'qb-smallresources:client:teleport', 2, 'ElevatorList', 2)
exports['xyz-menu']:AddButton("Control Panel", "Controls of the elevator", 'client', 'qb-smallresources:client:elevatorControls', '', 'OtherStuff', 1)

### Buttons
These are the initial, or "top-level" options in the menu.
exports['qb-menu']:SubMenu("Elevator Menu", "Select a building floor", "ElevatorList" )
exports['qb-menu']:SubMenu("Other", "Misc stuff", "OtherStuff" )

The first argument is the bolded grouping name. 
The second value is the description of the grouping. 
The third value is the grouping key. Use this in your buttons to assign them to a grouping.

## Qbus.xyz Discord:
[Discord](https://discord.gg/Gec9kBKwcB)