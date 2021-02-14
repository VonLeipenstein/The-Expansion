scoreboard players reset #mercury tick_distributer
execute if score #mercury gen_success matches 0 run tp @s 4895 0 -3210
execute if score #mercury gen_success matches 0 run scoreboard players set #mercury tick_distributer 600
execute if score #mercury gen_success matches 1 run function expansion:destinations/space/finish_generation
scoreboard players reset #mercury delay
