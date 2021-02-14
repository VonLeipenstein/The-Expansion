execute as @s[tag=!generator] if score @s expansion_dim matches 3 run function expansion:destinations/space/space_tick
execute if score @s expansion_dim matches 4 run function expansion:destinations/moon/moon_tick
execute if score @s expansion_dim matches 5 run function expansion:destinations/mars/mars_tick
execute if score @s expansion_dim matches 6 run function expansion:destinations/venus/venus_tick
execute if score @s expansion_dim matches 7 run function expansion:destinations/asteroids/asteroids_tick
execute if score @s expansion_dim matches 8 run function expansion:destinations/mercury/mercury_tick