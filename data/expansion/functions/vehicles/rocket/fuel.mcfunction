execute if entity @p[nbt={Inventory:[{id:"minecraft:coal"}]}] run scoreboard players add @s rocket_fuel_lvl 1
execute unless entity @p[nbt={Inventory:[{id:"minecraft:coal"}]}] run title @p title {"text":"Gather more coal","color":"red","bold":true}

clear @p minecraft:coal 1

# hier bereken ik het fuel percentage
function expansion:handy_tools/rocket_fuel_prct

execute as @s[scores={rocket_fuel_prct=50..100}] run title @p actionbar ["",{"text":"Fuel: "},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"rocket_fuel_prct"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute as @s[scores={rocket_fuel_prct=10..50}] run title @p actionbar ["",{"text":"Fuel: "},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"rocket_fuel_prct"},"color":"gold"},{"text":"%\u25b6","color":"gold"},{"text":" "}]
execute as @s[scores={rocket_fuel_prct=0..10}] run title @p actionbar ["",{"text":"Fuel: "},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"rocket_fuel_prct"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"},{"text":" "}]

execute as @s[scores={rocket_fuel_prct=100..}] run title @p title {"text":"Fuel level at 100%","color":"green","bold":true}

execute unless entity @p[nbt={Inventory:[{id:"minecraft:coal"}]}] run tag @p remove is_fueling_rocket
execute unless entity @p[distance=..4] run tag @p remove is_fueling_rocket
tag @p[tag=inside_rocket] remove is_fueling_rocket
execute as @s[scores={rocket_fuel_prct=100..}] run tag @p remove is_fueling_rocket
