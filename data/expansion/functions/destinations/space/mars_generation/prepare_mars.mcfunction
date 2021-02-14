scoreboard players reset #mars tick_distributer
execute if score #mars gen_success matches 0 run tp @s -3764 0 -2668
execute if score #mars gen_success matches 0 run scoreboard players set #mars tick_distributer 600
execute if score #mars gen_success matches 1 run function expansion:destinations/space/venus_generation/prepare_venus
scoreboard players reset #mars delay