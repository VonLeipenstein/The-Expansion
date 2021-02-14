execute if entity @p[scores={buggy_speed=1}] rotated ~ 0 if block ^ ^1 ^3 #expansion:expansion_air run tp @s ^ ^ ^0.2
execute if entity @p[scores={buggy_speed=2}] rotated ~ 0 if block ^ ^1 ^3 #expansion:expansion_air run tp @s ^ ^ ^0.3
execute if entity @p[scores={buggy_speed=3}] rotated ~ 0 if block ^ ^1 ^3 #expansion:expansion_air run tp @s ^ ^ ^0.4
execute if entity @p[scores={buggy_speed=4}] rotated ~ 0 if block ^ ^1 ^3 #expansion:expansion_air run tp @s ^ ^ ^0.5
execute if entity @p[scores={buggy_speed=5}] rotated ~ 0 if block ^ ^1 ^3 #expansion:expansion_air run tp @s ^ ^ ^0.6
execute if entity @p[scores={buggy_speed=6}] rotated ~ 0 if block ^ ^1 ^3 #expansion:expansion_air run tp @s ^ ^ ^0.7
execute if entity @p[scores={buggy_speed=7}] rotated ~ 0 if block ^ ^1 ^3 #expansion:expansion_air run tp @s ^ ^ ^0.8
execute if entity @p[scores={buggy_speed=8}] rotated ~ 0 if block ^ ^1 ^3 #expansion:expansion_air run tp @s ^ ^ ^0.9

execute if entity @p[scores={buggy_speed=1..}] run data modify entity @s Rotation set from entity @p Rotation
execute if entity @p[scores={buggy_speed=1..}] rotated ~ 0 unless block ^ ^ ^2 #expansion:expansion_air run tp @s ~ ~1 ~
execute if entity @p[scores={buggy_speed=1..}] rotated ~ 0 if block ^ ^-1 ^-2 #expansion:expansion_air if block ^ ^-1 ^-1 #expansion:expansion_air if block ^ ^-1 ^ #expansion:expansion_air if block ^ ^-1 ^2 #expansion:expansion_air if block ^ ^-1 ^1 #expansion:expansion_air run tp @s ~ ~-1 ~