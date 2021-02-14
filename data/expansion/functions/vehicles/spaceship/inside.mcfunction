effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:jump_boost 1 137 true
effect give @s minecraft:slow_falling 1 40 true
effect give @s minecraft:weakness 1 4 true
effect give @s minecraft:resistance 1 2 true


execute store result score @s spaceship_speed run data get entity @s SelectedItemSlot
execute as @s[scores={fuel_percentage=50..}] run title @p actionbar ["",{"text":"Position: \u25c0"},{"score":{"name":"@p","objective":"expansion_x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_z"}},{"text":"\u25b6     Speed: \u25c0"},{"score":{"name":"@p","objective":"spaceship_speed"}},{"text":"/8\u25b6     Fuel: "},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"fuel_percentage"},"color":"green"},{"text":"%\u25b6","color":"green"},{"text":" "}]
execute as @s[scores={fuel_percentage=10..50}] run title @p actionbar ["",{"text":"Position: \u25c0"},{"score":{"name":"@p","objective":"expansion_x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_z"}},{"text":"\u25b6     Speed: \u25c0"},{"score":{"name":"@p","objective":"spaceship_speed"}},{"text":"/8\u25b6     Fuel: "},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"fuel_percentage"},"color":"gold"},{"text":"%\u25b6","color":"gold"},{"text":" "}]
execute as @s[scores={fuel_percentage=..10}] run title @p actionbar ["",{"text":"Position: \u25c0"},{"score":{"name":"@p","objective":"expansion_x"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_y"}},{"text":"\u25b6 \u25c0"},{"score":{"name":"@p","objective":"expansion_z"}},{"text":"\u25b6     Speed: \u25c0"},{"score":{"name":"@p","objective":"spaceship_speed"}},{"text":"/8\u25b6     Fuel: "},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"fuel_percentage"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"},{"text":" "}]

tp @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] ~ ~ ~

execute as @s[scores={fuel_level=1..}] run function expansion:vehicles/spaceship/propulsion

execute unless entity @s[nbt={Inventory:{Slot:103b,id:"minecraft:carrot_on_a_stick",tag:{exp_spaceship:1b,onhead:1b}}}] run clear @s minecraft:carrot_on_a_stick{exp_spaceship:1b,onhead:1b} 1
execute unless entity @s[nbt={Inventory:{Slot:103b,id:"minecraft:carrot_on_a_stick",tag:{exp_spaceship:1b,onhead:1b}}}] run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{display:{Name:'{"text":"Spaceship","color":"white","bold":false,"italic":false,"underlined":false}'},Unbreakable:1b,CustomModelData:1012002,exp_spaceship:1b,onhead:1b} 1
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{exp_spaceship:1b,onhead:1b}}},limit=1,sort=nearest,distance=..5]

execute as @s[scores={fuel_level=1..}] run scoreboard players add @s fuel_timer 1
execute as @s[scores={fuel_timer=40..}] run scoreboard players remove @s fuel_level 1
scoreboard players set @s[scores={fuel_timer=40..}] fuel_timer 0

execute as @s run function expansion:handy_tools/fuel_percentage

execute as @s[scores={expansion_sneak=1..}] unless block ~ ~-1 ~ #expansion:expansion_air run function expansion:vehicles/spaceship/exit
execute as @s[scores={expansion_sneak=1..}] if score @s expansion_dim matches 3 run function expansion:vehicles/spaceship/exit
execute as @s[scores={expansion_sneak=1..}] if score @s expansion_dim matches 7 run function expansion:vehicles/spaceship/exit

execute as @s[scores={expansion_y=500..,expansion_dim=0}] run function expansion:vehicles/spaceship/transitions/to_space/earth_to_space
execute as @s[scores={expansion_y=500..,expansion_dim=4}] run function expansion:vehicles/spaceship/transitions/to_space/moon_to_space
execute as @s[scores={expansion_y=500..,expansion_dim=5}] run function expansion:vehicles/spaceship/transitions/to_space/mars_to_space
execute as @s[scores={expansion_y=500..,expansion_dim=6}] run function expansion:vehicles/spaceship/transitions/to_space/venus_to_space
execute as @s[scores={expansion_y=500..,expansion_dim=7}] run function expansion:vehicles/spaceship/transitions/to_space/asteroids_to_space
execute as @s[scores={expansion_y=500..,expansion_dim=8}] run function expansion:vehicles/spaceship/transitions/to_space/mercury_to_space

#execute as @s[scores={transition_debug=1..}] run function expansion:vehicles/spaceship/transitions/transition_debug_step_2