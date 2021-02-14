execute as @a[scores={expansion_sneak=1..},tag=!inside_rocket] at @s unless score @s optn_cooldown matches 1.. if entity @e[type=armor_stand,tag=rocket,distance=..2] run function expansion:vehicles/rocket/options
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["rocket"]}}},tag=!inside_rocket] run tag @s add inside_rocket
execute as @a[tag=inside_rocket] at @s unless score @s expansion_dim matches 3 unless score @s expansion_dim matches 7 as @e[type=armor_stand,tag=rocket,limit=1,sort=nearest] at @s run function expansion:vehicles/rocket/inside
execute as @a[scores={rocket_optns=1},tag=!inside_rocket] at @s run tag @s add is_fueling_rocket
execute as @a[scores={rocket_optns=2},tag=!inside_rocket] at @s as @e[type=armor_stand,tag=rocket,limit=1,sort=nearest,distance=..3] at @s run function expansion:vehicles/rocket/demount
execute as @a[tag=is_fueling_rocket] at @s as @e[type=armor_stand,tag=rocket,limit=1,sort=nearest,distance=..5] at @s run function expansion:vehicles/rocket/fuel
execute as @a[tag=inside_rocket] at @s unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["rocket"]}}}] run function expansion:vehicles/rocket/exit
scoreboard players set @a[scores={rocket_optns=1..}] rocket_optns 0
