summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["meteor_starter"]}
spreadplayers ~ ~ 25 100 false @e[type=area_effect_cloud,tag=meteor_starter,limit=1,sort=nearest]
execute at @e[type=area_effect_cloud,tag=meteor_starter,limit=1,sort=nearest] run summon minecraft:armor_stand ~ 255 ~80 {Invisible:1b,Tags:["falling_meteor"]}
tellraw @a {"text":"Something has entered the atmosphere!","color":"dark_purple"}