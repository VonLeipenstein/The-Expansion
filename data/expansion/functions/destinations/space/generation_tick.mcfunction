execute if score #earth tick_distributer matches 1.. positioned 0 128 0 run function expansion:destinations/space/earth_generation/load_earth
execute if score #moon tick_distributer matches 1.. positioned -1243 128 126 run function expansion:destinations/space/moon_generation/load_moon
execute if score #mars tick_distributer matches 1.. positioned -3764 128 -2668 run function expansion:destinations/space/mars_generation/load_mars
execute if score #venus tick_distributer matches 1.. positioned 2717 128 3482 run function expansion:destinations/space/venus_generation/load_venus
execute if score #mercury tick_distributer matches 1.. positioned 4895 128 -3210 run function expansion:destinations/space/mercury_generation/load_mercury

execute if score #earth delay matches 1 run function expansion:destinations/space/earth_generation/prepare_earth
execute if score #moon delay matches 1 run function expansion:destinations/space/moon_generation/prepare_moon
execute if score #mars delay matches 1 run function expansion:destinations/space/mars_generation/prepare_mars
execute if score #venus delay matches 1 run function expansion:destinations/space/venus_generation/prepare_venus
execute if score #mercury delay matches 1 run function expansion:destinations/space/mercury_generation/prepare_mercury

execute if score #earth delay matches 1.. run scoreboard players remove #earth delay 1
execute if score #moon delay matches 1.. run scoreboard players remove #moon delay 1
execute if score #mars delay matches 1.. run scoreboard players remove #mars delay 1
execute if score #venus delay matches 1.. run scoreboard players remove #venus delay 1
execute if score #mercury delay matches 1.. run scoreboard players remove #mercury delay 1

function expansion:handy_tools/error_messages/generating_space