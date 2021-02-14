execute as @a[scores={expansion_sneak=1..},tag=!inside_buggy] at @s unless score @s optn_cooldown matches 1.. if entity @e[type=armor_stand,tag=moon_buggy,distance=..2] run function expansion:vehicles/buggy/options
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["moon_buggy"]}}},tag=!inside_buggy] run tag @s add inside_buggy
execute as @a[tag=inside_buggy] at @s unless score @s expansion_dim matches 3 unless score @s expansion_dim matches 7 run function expansion:vehicles/buggy/moon_buggy
execute as @a[scores={buggy_optns=1},tag=!inside_buggy] at @s run tag @s add is_fueling_buggy
execute as @a[scores={buggy_optns=2},tag=!inside_buggy] at @s as @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest,distance=..3] at @s run function expansion:vehicles/buggy/demount
execute as @a[tag=is_fueling_buggy] at @s as @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest,distance=..5] at @s run function expansion:vehicles/buggy/fuel
execute as @a[tag=inside_buggy] unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["moon_buggy"]}}}] run function expansion:vehicles/buggy/exit
scoreboard players set @a[scores={buggy_optns=1..}] buggy_optns 0
