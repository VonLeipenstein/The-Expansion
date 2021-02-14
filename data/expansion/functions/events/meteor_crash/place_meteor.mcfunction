execute if score meteor_impact expansion_timer matches 2 run function expansion:events/meteor_crash/crater

execute if score meteor_impact expansion_timer matches 1 run setblock ~ ~2 ~4 minecraft:structure_block[mode=load]{metadata:"",name:"expansion:earth/crashed_engine",mode:"LOAD",author:"VonLeipenstein",mirror:"NONE",ignoreEntities:0b,powered:1b,seed:0L,rotation:"NONE",integrity:1.0f,posX:-5,posY:-5,posZ:-13,sizeX:8,sizeY:6,sizeZ:15} replace
execute if score meteor_impact expansion_timer matches 1 run setblock ~ ~1 ~4 observer[facing=down] replace
execute if score meteor_impact expansion_timer matches 1 run playsound entity.generic.explode voice @a ~ ~ ~ 300 0
execute if score meteor_impact expansion_timer matches 1 run kill @e[type=armor_stand,tag=landed_meteor]
scoreboard players remove meteor_impact expansion_timer 1