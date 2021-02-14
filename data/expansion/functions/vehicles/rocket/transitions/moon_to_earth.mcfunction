tp @e[type=pig,tag=rocket_pig,limit=1,sort=nearest] ~ -360 ~
tp @e[type=armor_stand,tag=rocket,limit=1,sort=nearest] ~ -360 ~
execute as @s in minecraft:overworld run tp @s 0 450 0 ~ 90
loot give @s loot expansion:crafting/vehicles/rocket
effect give @s minecraft:slow_falling 45 0 true


