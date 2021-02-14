execute if entity @p[nbt={Inventory:[{id:"minecraft:coal"}]}] run scoreboard players add @s fuel_level 1
execute unless entity @p[nbt={Inventory:[{id:"minecraft:coal"}]}] run title @p title {"text":"Gather more coal","color":"red","bold":true}

clear @p minecraft:coal 1

# hier bereken ik het fuel percentage
function expansion:handy_tools/fuel_percentage

execute as @s[scores={fuel_percentage=50..100}] run title @p actionbar ["",{"text":"Fuel: "},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute as @s[scores={fuel_percentage=10..50}] run title @p actionbar ["",{"text":"Fuel: "},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"fuel_percentage"},"color":"gold"},{"text":"%\u25b6","color":"gold"},{"text":" "}]
execute as @s[scores={fuel_percentage=0..10}] run title @p actionbar ["",{"text":"Fuel: "},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"fuel_percentage"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"},{"text":" "}]

execute as @s[scores={fuel_percentage=100..}] run title @p title {"text":"Fuel level at 100%","color":"green","bold":true}

execute unless entity @p[nbt={Inventory:[{id:"minecraft:coal"}]}] run tag @p remove is_fueling_buggy
execute unless entity @p[distance=..4] run tag @p remove is_fueling_buggy
tag @p[tag=inside_buggy] remove is_fueling_buggy
execute as @s[scores={fuel_percentage=100..}] run tag @p remove is_fueling_buggy
