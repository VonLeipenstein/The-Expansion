execute rotated ~ 0 run summon item ^-2 ^ ^1 {NoGravity:1b,PickupDelay:1,Tags:["chest_item"],Item:{id:"minecraft:stick",Count:1b}}
execute rotated ~ 0 run summon item ^-2 ^ ^1 {NoGravity:1b,PickupDelay:1,Tags:["legs_item"],Item:{id:"minecraft:stick",Count:1b}}
execute rotated ~ 0 run summon item ^-2 ^ ^1 {NoGravity:1b,PickupDelay:1,Tags:["feet_item"],Item:{id:"minecraft:stick",Count:1b}}

data modify entity @e[type=item,tag=chest_item,limit=1,sort=nearest] Item set from entity @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] ArmorItems[1]
data modify entity @e[type=item,tag=legs_item,limit=1,sort=nearest] Item set from entity @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] ArmorItems[0]
data modify entity @e[type=item,tag=feet_item,limit=1,sort=nearest] Item set from entity @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] ArmorItems[2]

data merge entity @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] {NoGravity:0b,Marker:0b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012003,exp_spaceship:1b,onhead:0b}}]}
data modify entity @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] Rotation[0] set from entity @p Rotation[0]

replaceitem entity @s armor.head minecraft:carrot_on_a_stick{display:{Name:'{"text":"Space Equipment","color":"white","bold":false,"italic":false,"underlined":false}'},Unbreakable:1b,CustomModelData:1012100,space_jetpack:1b} 1

scoreboard players operation @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] fuel_level = @s fuel_level
scoreboard players operation @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] fuel_max = @s fuel_max
scoreboard players reset @s fuel_level
scoreboard players reset @s fuel_max

execute rotated ~ 0 run tp @s ^-2 ^ ^1

scoreboard players set @s optn_cooldown 40
effect clear @s minecraft:levitation
effect clear @s minecraft:slow_falling
effect clear @s minecraft:invisibility
effect clear @s minecraft:weakness
effect clear @s minecraft:resistance
tag @s remove inside_spaceship
