execute if block ^ ^ ^0.2 #expansion:expansion_air run tp @s ^0.003 ^0.006 ^0.1
particle minecraft:poof ~ ~ ~ 0 0 0 0 1 force
tag @e[tag=!shooting_ice,type=!area_effect_cloud,type=!item,distance=..2,limit=1,sort=furthest] add smirnoff
scoreboard players add @s max_range 1
execute as @s[scores={max_range=..200}] at @s if block ^ ^ ^0.2 #expansion:expansion_air run function expansion:handy_tools/raycast/particle_loop