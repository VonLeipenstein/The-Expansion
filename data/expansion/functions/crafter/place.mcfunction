function expansion:handy_tools/raycast/cast
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ^ ^ ^ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["expansion_crafter"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012300}}]}
execute as @s[gamemode=survival] at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] if entity @e[type=minecraft:armor_stand,nbt={Tags:["expansion_crafter"]},distance=..1] run clear @s carrot_on_a_stick{crafter_placer:1b} 1
execute at @e[tag=expansion_ray,limit=1,sort=nearest] at @e[type=armor_stand,tag=expansion_crafter,limit=1,sort=nearest] run setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:"{\"text\":\"High-Tech Workbench\",\"color\":\"dark_grey\"}"} replace
execute at @e[tag=expansion_ray,limit=1,sort=nearest] run playsound minecraft:block.metal.place voice @s
execute as @e[tag=expansion_ray,limit=1,sort=nearest] run kill @s