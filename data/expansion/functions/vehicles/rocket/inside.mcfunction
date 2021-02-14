effect give @p minecraft:resistance 1 2 true

execute if block ~ ~-1 ~ minecraft:obsidian if block ~1 ~-1 ~ minecraft:obsidian if block ~-1 ~-1 ~ minecraft:obsidian if block ~ ~-1 ~1 minecraft:obsidian if block ~ ~-1 ~-1 minecraft:obsidian if block ~1 ~-1 ~1 minecraft:obsidian if block ~-1 ~-1 ~-1 minecraft:obsidian if block ~-1 ~-1 ~1 minecraft:obsidian if block ~1 ~-1 ~-1 minecraft:obsidian run tag @s add launchpad_good

execute as @s[tag=!launchpad_good] unless score @s launch_timer matches 0 as @p run function expansion:handy_tools/error_messages/launchpad
execute as @s[tag=!equipment_good] if entity @p[nbt={Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick",tag:{space_jetpack:1b}}]}] run tag @s add equipment_good
execute as @s[tag=equipment_good] unless entity @p[nbt={Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick",tag:{space_jetpack:1b}}]}] run tag @s remove equipment_good

execute as @s[tag=!equipment_good,tag=launchpad_good] as @p run function expansion:handy_tools/error_messages/equip_space_equipment_loop

execute as @s[tag=equipment_good,tag=launchpad_good,scores={rocket_fuel_prct=1..}] unless score @s launch_timer matches 0.. run scoreboard players set @s launch_timer 200
execute as @s[tag=equipment_good,tag=launchpad_good,scores={rocket_fuel_prct=1..,launch_timer=1..200}] run function expansion:vehicles/rocket/countdown

execute store result score @p rocket_speed run data get entity @p SelectedItemSlot
execute as @s[scores={rocket_fuel_prct=50..}] run title @p actionbar ["",{"text":"Position: \u25c0"},{"score":{"name":"@p","objective":"expansion_x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_z"}},{"text":"\u25b6     Fuel: "},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"rocket_fuel_prct"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute as @s[scores={rocket_fuel_prct=10..50}] run title @p actionbar ["",{"text":"Position: \u25c0"},{"score":{"name":"@p","objective":"expansion_x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_z"}},{"text":"\u25b6     Fuel: "},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"rocket_fuel_prct"},"color":"gold"},{"text":"%\u25b6","color":"gold"},{"text":" "}]
execute as @s[scores={rocket_fuel_prct=..10}] run title @p actionbar ["",{"text":"Position: \u25c0"},{"score":{"name":"@p","objective":"expansion_x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_z"}},{"text":"\u25b6     Fuel: "},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"rocket_fuel_prct"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"},{"text":" "}]

execute as @s[scores={launch_timer=0,rocket_fuel_prct=1..}] run function expansion:vehicles/rocket/propulsion

execute as @s[scores={rocket_fuel_lvl=1..,launch_timer=0}] run scoreboard players add @s fuel_timer 1
execute as @s[scores={fuel_timer=8..,launch_timer=0}] run scoreboard players remove @s rocket_fuel_lvl 1
scoreboard players set @s[scores={fuel_timer=8..,launch_timer=0}] fuel_timer 0

execute as @s[scores={rocket_fuel_lvl=1..}] run function expansion:handy_tools/rocket_fuel_prct

execute as @p[scores={expansion_y=500..,expansion_dim=0}] at @s run function expansion:vehicles/rocket/transitions/earth_to_moon
execute as @p[scores={expansion_y=500..,expansion_dim=4}] at @s run function expansion:vehicles/rocket/transitions/moon_to_earth

tag @s remove launchpad_good

#execute as @s[scores={transition_debug=1..}] run function expansion:vehicles/rocket/transitions/transition_debug_step_2