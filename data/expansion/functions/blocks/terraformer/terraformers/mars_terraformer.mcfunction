# executed as @e[type=armor_stand,tag=shield_generator]

execute at @s[scores={terraform=10..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["terraformer"]}
execute at @s[scores={mode_switcher=0}] run spreadplayers ~ ~ 0 40 false @e[type=area_effect_cloud,tag=terraformer,limit=1,sort=nearest]
execute at @s[scores={mode_switcher=1}] run spreadplayers ~ ~ 0 24 false @e[type=area_effect_cloud,tag=terraformer,limit=1,sort=nearest]
execute at @s[scores={mode_switcher=0}] run kill @e[type=area_effect_cloud,tag=terraformer,distance=40..,limit=1,sort=nearest]
execute at @e[type=area_effect_cloud,tag=terraformer,limit=1,sort=nearest] if predicate expansion:light/8_15_light run function expansion:blocks/terraformer/terraformers/mars_plant_placer