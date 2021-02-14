execute as @a[tag=inside_spaceship] at @s run function expansion:vehicles/spaceship/inside
execute as @a[scores={expansion_sneak=1..},tag=!inside_spaceship] at @s unless score @s optn_cooldown matches 1.. if entity @e[type=armor_stand,tag=exp_spaceship,distance=..2] run function expansion:vehicles/spaceship/options
execute as @a[scores={spaceship_optns=1}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick",tag:{space_jetpack:1b}}]}] run function expansion:handy_tools/error_messages/equip_space_equipment
execute as @a[scores={spaceship_optns=1},nbt={Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick",tag:{space_jetpack:1b}}]}] at @s if entity @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest,distance=..3] run function expansion:vehicles/spaceship/enter
execute as @a[scores={spaceship_optns=2},tag=!inside_spaceship] at @s run tag @s add is_fueling_spaceship
execute as @a[scores={spaceship_optns=3}] at @s if entity @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest,distance=..3] run function expansion:vehicles/spaceship/demount_optns
execute as @a[scores={demount_optns=2}] at @s as @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest,distance=..3] at @s run function expansion:vehicles/spaceship/demount
execute as @a[tag=is_fueling_spaceship,tag=!inside_spaceship] at @s as @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest,distance=..5] at @s run function expansion:vehicles/spaceship/fuel
scoreboard players set @a[scores={spaceship_optns=1..}] spaceship_optns 0
scoreboard players set @a[scores={demount_optns=1..}] demount_optns 0
scoreboard players remove @a[scores={optn_cooldown=1..}] optn_cooldown 1