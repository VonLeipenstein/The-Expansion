# earth: 0,0
# moon: -1243, 126
# mars: -3764, -2668
# venus: 2717, 3482
# mercury: 4895, -3210
# asteroids: 7932, ~

scoreboard players set #total_system gen_success 0
scoreboard players set #earth gen_success 0
scoreboard players set #moon gen_success 0
scoreboard players set #mars gen_success 0
scoreboard players set #venus gen_success 0
scoreboard players set #mercury gen_success 0

execute positioned 0 128 0 run forceload add ~ ~
execute positioned 0 128 0 if entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1,tag=earth] run scoreboard players set #earth gen_success 1
execute positioned 0 128 0 run forceload remove ~ ~

execute positioned -1243 128 126 run forceload add ~ ~
execute positioned -1243 128 126 if entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1,tag=moon] run scoreboard players set #moon gen_success 1
execute positioned -1243 128 126 run forceload remove ~ ~

execute positioned -3764 128 -2668 run forceload add ~ ~
execute positioned -3764 128 -2668 if entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1,tag=mars] run scoreboard players set #mars gen_success 1
execute positioned -3764 128 -2668 run forceload remove ~ ~

execute positioned 2717 128 3482 run forceload add ~ ~
execute positioned 2717 128 3482 if entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1,tag=venus] run scoreboard players set #venus gen_success 1
execute positioned 2717 128 3482 run forceload remove ~ ~

execute positioned 4895 128 -3210 run forceload add ~ ~
execute positioned 4895 128 -3210 if entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1,tag=mercury] run scoreboard players set #mercury gen_success 1
execute positioned 4895 128 -3210 run forceload remove ~ ~

execute if score #earth gen_success matches 1 if score #moon gen_success matches 1 if score #mars gen_success matches 1 if score #venus gen_success matches 1 if score #mercury gen_success matches 1 run scoreboard players set #total_system gen_success 1
