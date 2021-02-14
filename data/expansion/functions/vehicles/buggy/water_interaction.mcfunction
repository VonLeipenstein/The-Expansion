playsound entity.item.break master @p
loot spawn ~ ~ ~ loot expansion:crafting/vehicles/buggy
execute as @p at @s run tp @s ~ ~ ~
tp @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest] ~ -360 ~
