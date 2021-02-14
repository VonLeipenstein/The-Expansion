# change terradome mode
execute as @e[type=armor_stand,tag=shield_generator,distance=..3,limit=1,sort=nearest] run scoreboard players add @s mode_switcher 1
execute as @e[type=armor_stand,tag=shield_generator,distance=..3,limit=1,sort=nearest,scores={mode_switcher=2..}] run scoreboard players set @s mode_switcher 0
