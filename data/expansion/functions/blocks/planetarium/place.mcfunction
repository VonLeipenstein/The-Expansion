function expansion:handy_tools/raycast/cast
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 run function expansion:blocks/planetarium/setup
execute as @s[gamemode=survival] at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] if entity @e[type=minecraft:armor_stand,nbt={Tags:["planetarium"]},distance=..1] run clear @s carrot_on_a_stick{planetarium:1b} 1
execute at @e[tag=expansion_ray,limit=1,sort=nearest] at @e[type=armor_stand,tag=planetarium,limit=1,sort=nearest] run setblock ~ ~ ~ spawner{MaxNearbyEntities:0,RequiredPlayerRange:0} replace
execute at @e[tag=expansion_ray,limit=1,sort=nearest] run playsound minecraft:block.metal.place voice @s
execute as @e[tag=expansion_ray,limit=1,sort=nearest] run kill @s