# earth: 0,0
# moon: -1243, 126
# mars: -3764, -2668
# venus: 2717, 3482
# mercury: 4895, -3210
# asteroids: 7932, ~

scoreboard players reset #moon tick_distributer
execute if score #moon gen_success matches 0 run tp @s -1243 0 126
execute if score #moon gen_success matches 0 run scoreboard players set #moon tick_distributer 550
execute if score #moon gen_success matches 1 run function expansion:destinations/space/mars_generation/prepare_mars
scoreboard players reset #moon delay
