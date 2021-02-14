# mode_switcher=0 -> sphere
# mode_switcher=1 -> cube
# mode is changed from expansion/functions/items/rocket_wrench

tp @s[scores={mode_switcher=0}] ~ ~ ~ ~7 ~
execute at @s[scores={mode_switcher=0}] positioned ~ ~0.5 ~ run function expansion:handy_tools/particles/terraformer_sphere_particle
execute at @s[scores={mode_switcher=1}] positioned ~ ~0.5 ~ run function expansion:handy_tools/particles/terraformer_cube_particle

execute as @s run scoreboard players add @s terraform 1

execute at @s if block ~ ~-1 ~ minecraft:redstone_block if score @p expansion_dim matches 5 run function expansion:blocks/terraformer/terraformers/mars_terraformer
execute at @s if block ~ ~-1 ~ minecraft:redstone_block if score @p expansion_dim matches 4 run function expansion:blocks/terraformer/terraformers/moon_terraformer

execute as @s[scores={terraform=10..}] run scoreboard players set @s terraform 0