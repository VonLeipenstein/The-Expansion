function expansion:handy_tools/raycast/cast
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ^ ^ ^ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["terraformer"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012301}}]}
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ^ ^ ^ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["shield_generator"]}
execute as @s[gamemode=survival] at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] if entity @e[type=minecraft:armor_stand,nbt={Tags:["terraformer"]},distance=..1] run clear @s carrot_on_a_stick{terraformer:1b} 1
execute at @e[tag=expansion_ray,limit=1,sort=nearest] as @e[tag=shield_generator,limit=1,sort=nearest] run scoreboard players set @s mode_switcher 0
execute at @e[tag=expansion_ray,limit=1,sort=nearest] at @e[type=armor_stand,tag=terraformer,limit=1,sort=nearest] run setblock ~ ~ ~ spawner{MaxNearbyEntities:0,RequiredPlayerRange:0} replace
execute at @e[tag=expansion_ray,limit=1,sort=nearest] run playsound minecraft:block.metal.place voice @s
execute as @e[tag=expansion_ray,limit=1,sort=nearest] run kill @s