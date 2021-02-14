kill @e[type=area_effect_cloud,tag=expansion_ray]
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[expansion_ray]}
tp @e[tag=expansion_ray,limit=1,sort=nearest] @s
execute at @s anchored eyes run tp @e[tag=expansion_ray,limit=1,sort=nearest] ^-0.4 ^-1 ^1
execute as @e[tag=expansion_ray,limit=1,sort=nearest] at @s run function expansion:handy_tools/raycast/particle_loop