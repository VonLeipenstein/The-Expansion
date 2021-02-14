effect give @s minecraft:levitation 1 255 true

execute if block ^ ^ ^2 #expansion:expansion_air if block ^ ^ ^1 #expansion:expansion_air run tp @s[scores={spaceship_speed=1,expansion_y=..256}] ^ ^ ^0.2
execute if block ^ ^ ^2 #expansion:expansion_air if block ^ ^ ^1 #expansion:expansion_air run tp @s[scores={spaceship_speed=2,expansion_y=..256}] ^ ^ ^0.4
execute if block ^ ^ ^2 #expansion:expansion_air if block ^ ^ ^1 #expansion:expansion_air run tp @s[scores={spaceship_speed=3,expansion_y=..256}] ^ ^ ^0.6
execute if block ^ ^ ^2 #expansion:expansion_air if block ^ ^ ^1 #expansion:expansion_air run tp @s[scores={spaceship_speed=4,expansion_y=..256}] ^ ^ ^0.8
execute if block ^ ^ ^2 #expansion:expansion_air if block ^ ^ ^1 #expansion:expansion_air run tp @s[scores={spaceship_speed=5,expansion_y=..256}] ^ ^ ^1.0
execute if block ^ ^ ^2 #expansion:expansion_air if block ^ ^ ^1 #expansion:expansion_air run tp @s[scores={spaceship_speed=6,expansion_y=..256}] ^ ^ ^1.2
execute if block ^ ^ ^2 #expansion:expansion_air if block ^ ^ ^1 #expansion:expansion_air run tp @s[scores={spaceship_speed=7,expansion_y=..256}] ^ ^ ^1.4
execute if block ^ ^ ^2 #expansion:expansion_air if block ^ ^ ^1 #expansion:expansion_air run tp @s[scores={spaceship_speed=8,expansion_y=..256}] ^ ^ ^1.6

tp @s[scores={spaceship_speed=1,expansion_y=250..}] ^ ^ ^0.2
tp @s[scores={spaceship_speed=2,expansion_y=250..}] ^ ^ ^0.4
tp @s[scores={spaceship_speed=3,expansion_y=250..}] ^ ^ ^0.6
tp @s[scores={spaceship_speed=4,expansion_y=250..}] ^ ^ ^0.8
tp @s[scores={spaceship_speed=5,expansion_y=250..}] ^ ^ ^1.0
tp @s[scores={spaceship_speed=6,expansion_y=250..}] ^ ^ ^1.2
tp @s[scores={spaceship_speed=7,expansion_y=250..}] ^ ^ ^1.4
tp @s[scores={spaceship_speed=8,expansion_y=250..}] ^ ^ ^1.6

execute unless block ~ ~ ~ #expansion:expansion_air run tp @s ~ ~1 ~
execute unless block ~ ~1 ~ #expansion:expansion_air run tp @s ~ ~-1 ~

execute at @s anchored eyes run particle dust 0.000 0.969 1.000 1 ^0.4 ^-0.4 ^-2 0 0 0 0 10 force
execute at @s anchored eyes run particle dust 0.000 0.969 1.000 1 ^-0.4 ^-0.4 ^-2 0 0 0 0 10 force
execute at @s anchored eyes run particle dust 0.000 0.969 1.000 1 ^0.9 ^-0.8 ^-1.6 0 0 0 0 10 force
execute at @s anchored eyes run particle dust 0.000 0.969 1.000 1 ^-0.9 ^-0.8 ^-1.6 0 0 0 0 10 force