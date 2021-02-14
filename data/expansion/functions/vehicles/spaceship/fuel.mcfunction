tag @p[tag=inside_spaceship] remove is_fueling_spaceship
execute unless entity @p[nbt={Inventory:[{id:"minecraft:coal"}]}] run tag @p remove is_fueling_spaceship
execute unless entity @p[distance=..4] run tag @p remove is_fueling_spaceship
execute as @s[scores={fuel_percentage=100..}] run tag @p remove is_fueling_spaceship

execute if entity @p[nbt={Inventory:[{id:"minecraft:potion",tag:{lacrymae:1b}}]}] run scoreboard players set @s fuel_level 256
execute unless entity @p[nbt={Inventory:[{id:"minecraft:potion",tag:{lacrymae:1b}}]}] run title @p title {"text":"Get more Lacrymae","color":"red","bold":true}

function expansion:handy_tools/fuel_percentage

execute as @s[scores={fuel_percentage=100}] run clear @p minecraft:potion{lacrymae:1b} 1

execute as @s[scores={fuel_percentage=50..}] at @s run title @p actionbar ["",{"text":"Fuel: "},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute as @s[scores={fuel_percentage=10..50}] at @s run title @p actionbar ["",{"text":"Fuel: "},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"fuel_percentage"},"color":"gold"},{"text":"%\u25b6","color":"gold"},{"text":" "}]
execute as @s[scores={fuel_percentage=0..10}] at @s run title @p actionbar ["",{"text":"Fuel: "},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"fuel_percentage"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"},{"text":" "}]

execute as @s[scores={fuel_percentage=100..}] run title @p title {"text":"Fuel level at 100%","color":"green","bold":true}