tag @s add inside_spaceship
tag @s remove choosing_optn

tp @s @e[type=armor_stand,tag=exp_spaceship,distance=..2,limit=1,sort=nearest]
tp @s ~ ~ ~ ~ 0

data modify entity @e[type=armor_stand,tag=exp_spaceship,distance=..2,limit=1,sort=nearest] ArmorItems[1] set from entity @s Inventory[{Slot:102b}]
data modify entity @e[type=armor_stand,tag=exp_spaceship,distance=..2,limit=1,sort=nearest] ArmorItems[0] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=armor_stand,tag=exp_spaceship,distance=..2,limit=1,sort=nearest] ArmorItems[2] set from entity @s Inventory[{Slot:100b}]

replaceitem entity @s armor.head minecraft:carrot_on_a_stick{display:{Name:'{"text":"Spaceship","color":"white","bold":false,"italic":false,"underlined":false}'},Unbreakable:1b,CustomModelData:1012002,exp_spaceship:1b,onhead:1b} 1
replaceitem entity @s armor.chest air
replaceitem entity @s armor.legs air
replaceitem entity @s armor.feet air

scoreboard players operation @s fuel_level = @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] fuel_level
scoreboard players set @s fuel_max 256

replaceitem entity @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] armor.head minecraft:air
data merge entity @e[type=armor_stand,tag=exp_spaceship,limit=1,sort=nearest] {Marker:1b,Invisible:1b}