execute as @s at @s unless score @s launching matches 1.. unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{magnetic_boots:1b}}]}] run effect give @s minecraft:levitation 1 255 true
execute as @s at @s unless score @s launching matches 1.. if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{magnetic_boots:1b}}]}] if block ~ ~-1 ~ #expansion:expansion_air if block ~ ~-2 ~ #expansion:expansion_air if block ~ ~-3 ~ #expansion:expansion_air run effect give @s minecraft:levitation 1 255 true

execute as @s[scores={expansion_rc=1..},nbt={SelectedItem:{tag:{space_controller:1b}},Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] run effect clear @s minecraft:levitation
execute as @s[scores={expansion_sneak=1..},nbt={SelectedItem:{tag:{space_controller:1b}},Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] run effect clear @s minecraft:levitation

execute as @s[scores={expansion_rc=1..},nbt={SelectedItem:{tag:{space_controller:1b}},Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] run effect give @s minecraft:levitation 1 10 true
execute as @s[scores={expansion_sneak=1..},nbt={SelectedItem:{tag:{space_controller:1b}},Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] run effect give @s minecraft:slow_falling 2 1 true

execute as @s[scores={expansion_rc=1..},nbt={SelectedItem:{tag:{space_controller:1b}},Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] at @s rotated ~ 0 positioned ~ ~0.5 ~ run particle cloud ^ ^ ^-0.5 0.1 0.1 0.1 0 5
execute as @s[scores={expansion_sneak=1..},nbt={SelectedItem:{tag:{space_controller:1b}},Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] at @s rotated ~ 0 positioned ~ ~1.5 ~ run particle poof ^ ^ ^-0.5 0.1 0.1 0.1 0 2

execute as @s[scores={expansion_rc=1..},nbt={SelectedItem:{tag:{space_controller:1b}},Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] at @s run playsound entity.cat.hiss master @s ~ ~ ~ 0.1 2 1 
execute as @s[scores={expansion_sneak=1..},nbt={SelectedItem:{tag:{space_controller:1b}},Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] at @s run playsound entity.cat.hiss master @s ~ ~ ~ 0.1 2 1 

execute as @s[nbt={SelectedItem:{tag:{space_controller:1b}},Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] run title @s actionbar {"text":"Press Shift to descend / Rightclick to ascend","color":"dark_blue","bold":true}

execute as @s unless score @s launching matches 1.. at @s run execute as @e[distance=..50] run data merge entity @s {NoGravity:1b}
execute as @s if score @s launching matches 1.. at @s run execute as @e[tag=expansion_rocket,distance=..5,limit=1,sort=nearest] run data merge entity @s {NoGravity:0b}

execute at @s run particle minecraft:underwater ~ ~ ~ 10 10 10 0 200

function expansion:handy_tools/low_oxygen
