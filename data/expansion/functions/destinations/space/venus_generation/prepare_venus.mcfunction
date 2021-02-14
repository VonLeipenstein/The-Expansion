scoreboard players reset #venus tick_distributer
execute if score #venus gen_success matches 0 run tp @s 2717 0 3482
execute if score #venus gen_success matches 0 run scoreboard players set #venus tick_distributer 550
execute if score #venus gen_success matches 1 run function expansion:destinations/space/mercury_generation/prepare_mercury
scoreboard players reset #venus delay