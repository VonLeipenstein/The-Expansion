# determine the location of the planet
execute as @e[type=armor_stand,tag=planetarium_mercury,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_mercury,limit=1,sort=nearest] ^ ^2 ^1
execute as @e[type=armor_stand,tag=planetarium_venus,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_venus,limit=1,sort=nearest] ^ ^2 ^2
execute as @e[type=armor_stand,tag=planetarium_earth,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_earth,limit=1,sort=nearest] ^ ^2 ^3
execute as @e[type=armor_stand,tag=planetarium_mars,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_mars,limit=1,sort=nearest] ^ ^2 ^4
execute as @e[type=armor_stand,tag=planetarium_jupiter,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_jupiter,limit=1,sort=nearest] ^ ^1.2 ^6
execute as @e[type=armor_stand,tag=planetarium_saturn,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_saturn,limit=1,sort=nearest] ^ ^1.2 ^7
execute as @e[type=armor_stand,tag=planetarium_uranus,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_uranus,limit=1,sort=nearest] ^ ^2 ^8
execute as @e[type=armor_stand,tag=planetarium_neptune,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_neptune,limit=1,sort=nearest] ^ ^2 ^9
execute as @e[type=armor_stand,tag=planetarium_pluto,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_pluto,limit=1,sort=nearest] ^ ^2 ^10

# change the orbit of the planet
execute as @e[type=armor_stand,tag=planetarium_mercury,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.204 ~
execute as @e[type=armor_stand,tag=planetarium_venus,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.0795 ~
execute as @e[type=armor_stand,tag=planetarium_earth,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.049 ~
execute as @e[type=armor_stand,tag=planetarium_mars,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.026 ~
execute as @e[type=armor_stand,tag=planetarium_jupiter,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.004 ~
execute as @e[type=armor_stand,tag=planetarium_saturn,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.002 ~
execute as @e[type=armor_stand,tag=planetarium_uranus,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.0006 ~
execute as @e[type=armor_stand,tag=planetarium_neptune,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.0003 ~
execute as @e[type=armor_stand,tag=planetarium_pluto,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.0002 ~
execute as @e[type=armor_stand,tag=planetarium_moon,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.662 ~
execute as @e[type=armor_stand,tag=planetarium_asteroids,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-5 ~

#c change the rotation of the planet
execute as @e[type=armor_stand,tag=mini_sun,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.6 ~
execute as @e[type=armor_stand,tag=mini_mercury,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.4 ~
execute as @e[type=armor_stand,tag=mini_venus,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.08 ~
execute as @e[type=armor_stand,tag=mini_earth,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-18 ~
execute as @e[type=armor_stand,tag=mini_mars,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-17.1 ~
execute as @e[type=armor_stand,tag=mini_jupiter,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-43.2 ~
execute as @e[type=armor_stand,tag=mini_saturn,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-40.7 ~
execute as @e[type=armor_stand,tag=mini_uranus,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-25.0 ~
execute as @e[type=armor_stand,tag=mini_neptune,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-27.0 ~
execute as @e[type=armor_stand,tag=mini_pluto,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-2.9 ~

# the moon
execute as @e[type=armor_stand,tag=mini_earth,limit=1,sort=nearest] at @s run tp @e[type=armor_stand,tag=planetarium_moon,limit=1,sort=nearest] ~ ~ ~
execute as @e[type=armor_stand,tag=planetarium_moon,limit=1,sort=nearest] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=mini_moon,limit=1,sort=nearest] ^ ^0.5 ^0.3 ~ ~
execute as @e[type=armor_stand,tag=planetarium_moon,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.67 ~

# asteroids particles
execute as @e[type=armor_stand,tag=planetarium_asteroids,limit=1,sort=nearest] at @s rotated ~ 0 run particle minecraft:mycelium ^ ^3 ^5 0.1 0.1 0.1 0 10
execute as @e[type=armor_stand,tag=planetarium_asteroids,limit=1,sort=nearest] at @s rotated ~ 0 run particle minecraft:mycelium ^ ^3 ^-5 0.1 0.1 0.1 0 10
execute as @e[type=armor_stand,tag=planetarium_asteroids,limit=1,sort=nearest] at @s rotated ~ 0 run particle minecraft:mycelium ^5 ^3 ^ 0.1 0.1 0.1 0 10
execute as @e[type=armor_stand,tag=planetarium_asteroids,limit=1,sort=nearest] at @s rotated ~ 0 run particle minecraft:mycelium ^-5 ^3 ^ 0.1 0.1 0.1 0 10

# jupiter rings
execute as @e[type=armor_stand,tag=mini_saturn,limit=1,sort=nearest] at @s rotated ~ 0 run particle minecraft:mycelium ^ ^1.75 ^0.7 0.1 0 0.1 0 5

# stars
particle minecraft:end_rod ^ ^1.75 ^ 7 7 7 0 2 force
