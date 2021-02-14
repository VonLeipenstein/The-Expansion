# place vehicles
execute as @s[nbt={SelectedItem:{tag:{moon_buggy:1b}}}] at @s run function expansion:vehicles/buggy/place
execute as @s[nbt={SelectedItem:{tag:{exp_spaceship:1b}}}] at @s run function expansion:vehicles/spaceship/place
execute as @s[nbt={SelectedItem:{tag:{exp_rocket:1b}}}] at @s run function expansion:vehicles/rocket/place

# water dispenser
execute as @s[nbt={SelectedItem:{tag:{water_dispenser:1b}}},tag=!inside_spaceship] at @s run function expansion:items/ice_dispenser/water_dispenser

# wrench
execute as @s[nbt={SelectedItem:{tag:{rocket_wrench:1b}}},tag=!inside_spaceship] at @s rotated ~ 0 positioned ^ ^ ^2 run function expansion:items/rocket_wrench

# space equipment
execute as @s[nbt={SelectedItem:{tag:{space_jetpack:1b}}},tag=!inside_spaceship] run function expansion:items/jetpack

#terraformer
execute as @s[nbt={SelectedItem:{tag:{terraformer:1b}}}] at @s run function expansion:blocks/terraformer/place

#crafter
execute as @s[nbt={SelectedItem:{tag:{crafter_placer:1b}}}] at @s run function expansion:crafter/place

#lacrymae extractor
execute as @s[nbt={SelectedItem:{tag:{lacrymae_extractor:1b}}}] at @s run function expansion:blocks/lacrymae_extractor/place

# planetarium
execute as @s[nbt={SelectedItem:{tag:{planetarium:1b}}}] at @s if entity @e[tag=planetarium,distance=..22] run function expansion:handy_tools/error_messages/planetarium_error
execute as @s[nbt={SelectedItem:{tag:{planetarium:1b}}}] at @s unless entity @e[tag=planetarium,distance=..22] run function expansion:blocks/planetarium/place
