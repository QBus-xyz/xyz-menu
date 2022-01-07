## Description
A different take on NUI menu. I like the simplified use of exports, the ability to use html style in the button text, and I added the ability to pass tables of data in the button actions. This is work that I continued to do after my PR to [BR-Menu](https://github.com/BrunoMarc123/BR-Menu) was closed without merge.

![](https://i.imgur.com/aF3EktU.png)
## Usage
Within the code, the seqence of setting your Title bar, your sub-menu options, and your top level options is very important, and should be done so in that order.

### Title
 Simple string will do.
```lua
exports['xyz-menu']:SetTitle("Elevator Menu")
```

### Sub-group buttons
These are your options, within each "top-level" groupings. The first argument is the bolded grouping name. The second value is the description of the grouping. The third value is the type of event you are triggering; acceptable values are `client` and `server`. The fourth value is the name of the event you are triggering. The fifth value is the data that you are passing through to the event; this can be anything from a single number or string to a table of data. The sixth value is the Button/Grouping key. The final value is the unique key for the sub-group button. These should not be duplicated, as they are used to pass the selected data, and can cause issues if duplicated in the same menu.
```lua
exports['xyz-menu']:AddButton("First Floor", "Head to the first floor lobby", 'client', 'qb-smallresources:client:teleport', 1, 'ElevatorList', 1)
exports['xyz-menu']:AddButton("Second Floor", "Head to the second floor", 'client', 'qb-smallresources:client:teleport', 2, 'ElevatorList', 2)
exports['xyz-menu']:AddButton("Control Panel", "Controls of the elevator", 'client', 'qb-smallresources:client:elevatorControls', '', 'OtherStuff', 1)
```


### Buttons
These are the initial, or "top-level" options in the menu.
```lua
exports['qb-menu']:SubMenu("Elevator Menu", "Select a building floor", "ElevatorList" )
exports['qb-menu']:SubMenu("Other", "Misc stuff", "OtherStuff" )
```


The first argument is the bolded grouping name. The second value is the description of the grouping. The third value is the grouping key. Use this in your buttons to assign them to a grouping.

## Qbus.xyz Discord:
[Discord](https://discord.gg/Gec9kBKwcB)
