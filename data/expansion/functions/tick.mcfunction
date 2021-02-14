#post load functions
execute if score #reload delay matches 1.. run scoreboard players remove #reload delay 1
execute if score #reload delay matches 1 run function expansion:global/post_load 

# generate planets
execute unless score #total_system gen_success matches 1 as @a[tag=generator] in expansion:space/space run function expansion:destinations/space/generation_tick

#global rightclick actions
execute as @a[scores={expansion_rc=1..}] run function expansion:global/rightclick

# get players position
execute as @a at @s store result score @s expansion_x run data get entity @s Pos[0]
execute as @a at @s store result score @s expansion_y run data get entity @s Pos[1]
execute as @a at @s store result score @s expansion_z run data get entity @s Pos[2]

# the global timer
execute unless score global expansion_timer matches 0..999 run scoreboard players set global expansion_timer 0
scoreboard players add global expansion_timer 1

# rocket
function expansion:vehicles/rocket/rocket_tick
# spaceship
function expansion:vehicles/spaceship/spaceship_tick
# moon buggy
function expansion:vehicles/buggy/buggy_tick

# run functions depending on which place you are
execute as @a run function expansion:global/dimension_tick_functions

# magnetic boots
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{magnetic_boots:1b}}]},tag=!inside_spaceship] run function expansion:items/magnetic_boots

# blocks
function expansion:blocks/blocks_tick

# guide1
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},limit=1,sort=random] at @s if block ~ ~-1 ~ minecraft:smithing_table run function expansion:commands/give_guide1

# meteors
execute if score global meteors matches 1 run function expansion:events/meteor_crash/meteor_tick

#detect in which dimension the player is
execute as @a at @s run function expansion:global/detect_dimension

# reset all the detection scoreboards
scoreboard players set @a[scores={expansion_rc=1..}] expansion_rc 0
scoreboard players set @a[scores={expansion_sneak=1..}] expansion_sneak 0
scoreboard players set @a[scores={expansion_jump=1..}] expansion_jump 0
scoreboard players set @a[scores={expansion_sprint=1..}] expansion_sprint 0