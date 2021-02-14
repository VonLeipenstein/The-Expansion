execute as @s[scores={expansion_jump=1..}] unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{magnetic_boots:1b}}]}] run effect give @s minecraft:levitation 1 2 true
execute as @s at @s unless block ~ ~2 ~ #expansion:expansion_air run effect clear @s minecraft:levitation
execute as @s unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{magnetic_boots:1b}}]}] run effect give @s minecraft:slow_falling 2 0 true
execute as @s at @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{magnetic_boots:1b}}]}] if block ~ ~-1 ~ #expansion:expansion_air if block ~ ~-2 ~ #expansion:expansion_air if block ~ ~-3 ~ #expansion:expansion_air run effect give @s minecraft:slow_falling 2 0 true
