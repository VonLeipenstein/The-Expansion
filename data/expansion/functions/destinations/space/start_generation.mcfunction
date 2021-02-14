tag @a[tag=generator] remove generator
tag @r add generator
execute as @a[tag=generator] run gamemode spectator
effect give @a[tag=generator] minecraft:blindness 9999 10 true
execute as @a[tag=generator] at @s run forceload add ~ ~
execute as @a[tag=generator] at @s run summon armor_stand ~ ~ ~ {Tags:["spawn"],NoGravity:1b,Invisible:1b,Marker:1b}

scoreboard players reset #earth tick_distributer
scoreboard players reset #moon tick_distributer
scoreboard players reset #mars tick_distributer
scoreboard players reset #venus tick_distributer
scoreboard players reset #mercury tick_distributer

scoreboard players set #earth delay 10