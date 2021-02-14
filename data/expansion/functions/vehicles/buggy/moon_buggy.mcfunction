execute store result score @s buggy_speed run data get entity @s SelectedItemSlot

execute if entity @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest,scores={fuel_percentage=50..}] run title @s actionbar ["",{"text":"Position: \u25c0"},{"score":{"name":"@s","objective":"expansion_x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@s","objective":"expansion_y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@s","objective":"expansion_z"}},{"text":"\u25b6     Speed: \u25c0"},{"score":{"name":"@s","objective":"buggy_speed"}},{"text":"/8\u25b6     Fuel: "},{"text":"\u25c0","color":"green"},{"score":{"name":"@e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest]","objective":"fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute if entity @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest,scores={fuel_percentage=10..50}] run title @s actionbar ["",{"text":"Position: \u25c0"},{"score":{"name":"@s","objective":"expansion_x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@s","objective":"expansion_y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@s","objective":"expansion_z"}},{"text":"\u25b6     Speed: \u25c0"},{"score":{"name":"@s","objective":"buggy_speed"}},{"text":"/8\u25b6     Fuel: "},{"text":"\u25c0","color":"gold"},{"score":{"name":"@e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest]","objective":"fuel_percentage"},"color":"gold"},{"text":"%\u25b6","color":"gold"},{"text":" "}]
execute if entity @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest,scores={fuel_percentage=..10}] run title @s actionbar ["",{"text":"Position: \u25c0"},{"score":{"name":"@s","objective":"expansion_x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@s","objective":"expansion_y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@s","objective":"expansion_z"}},{"text":"\u25b6     Speed: \u25c0"},{"score":{"name":"@s","objective":"buggy_speed"}},{"text":"/8\u25b6     Fuel: "},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest]","objective":"fuel_percentage"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"},{"text":" "}]

execute as @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest] run function expansion:handy_tools/fuel_percentage

execute as @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest,scores={fuel_level=1..}] at @s run function expansion:vehicles/buggy/propulsion

execute if entity @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest,scores={fuel_level=1..}] run scoreboard players add @s fuel_timer 1
execute as @s[scores={fuel_timer=40..}] run scoreboard players remove @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest] fuel_level 1
scoreboard players set @s[scores={fuel_timer=40..}] fuel_timer 0

execute at @s as @e[type=armor_stand,tag=moon_buggy,distance=..3,limit=1,sort=nearest] at @s if block ~ ~ ~ #expansion:expansion_water run function expansion:vehicles/buggy/water_interaction

