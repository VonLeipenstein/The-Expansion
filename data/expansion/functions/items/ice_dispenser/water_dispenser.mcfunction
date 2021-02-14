execute unless score @s ice_ammo matches 1..10 run scoreboard players set @s ice_ammo 0
execute unless score @s expansion_sneak matches 1.. unless score @s ice_ammo matches 1..10 unless entity @s[nbt={Inventory:[{id:"minecraft:water_bucket"}]}] run title @s title {"text":"Gather more water","color":"red","bold":true}

execute unless score @s expansion_sneak matches 1.. as @s[nbt={Inventory:[{id:"minecraft:water_bucket"}]},scores={ice_ammo=0}] run tag @s add reloading_ice
execute as @s[tag=reloading_ice] run give @s minecraft:bucket 1
execute as @s[tag=reloading_ice] run clear @s minecraft:water_bucket 1
execute as @s[tag=reloading_ice] run scoreboard players set @s ice_ammo 10

execute at @s[scores={ice_ammo=1..},tag=!reloading_ice] unless score @s expansion_sneak matches 1.. positioned ^ ^1 ^2 if block ~ ~ ~ #expansion:expansion_air run playsound block.lava.extinguish master @s ~ ~ ~ 1 2 1

# placing block
execute as @s[scores={ice_ammo=1..,ice_disp_mode=1},tag=!reloading_ice] unless score @s expansion_sneak matches 1.. run function expansion:items/ice_dispenser/place_block

# shooting ice
execute as @s[scores={ice_ammo=2..,ice_disp_mode=2},tag=!reloading_ice] unless score @s expansion_sneak matches 1.. run function expansion:items/ice_dispenser/shoot
execute as @e[tag=smirnoff] at @s run function expansion:items/ice_dispenser/freeze
tag @s remove shooting_ice

# place wall
execute as @s[scores={ice_ammo=5..,ice_disp_mode=3},tag=!reloading_ice] unless score @s expansion_sneak matches 1.. run function expansion:items/ice_dispenser/place_wall

# mode chooser
execute as @s[scores={expansion_sneak=1..},tag=!reloading_ice] run scoreboard players add @s ice_disp_mode 1

# resetting scoreboards
execute if score @s ice_disp_mode matches 4.. run scoreboard players set @s ice_disp_mode 1

execute as @s[scores={ice_disp_mode=1}] run title @s actionbar ["",{"text":"Ammo: \u25c0"},{"score":{"name":"@s","objective":"ice_ammo"}},{"text":"\u25b6     Dispenser Mode: \u25c0"},{"text":"Building"},{"text":"\u25b6"}]
execute as @s[scores={ice_disp_mode=2}] run title @s actionbar ["",{"text":"Ammo: \u25c0"},{"score":{"name":"@s","objective":"ice_ammo"}},{"text":"\u25b6     Dispenser Mode: \u25c0"},{"text":"Offense"},{"text":"\u25b6"}]
execute as @s[scores={ice_disp_mode=3}] run title @s actionbar ["",{"text":"Ammo: \u25c0"},{"score":{"name":"@s","objective":"ice_ammo"}},{"text":"\u25b6     Dispenser Mode: \u25c0"},{"text":"Defense"},{"text":"\u25b6"}]

execute as @s[tag=reloading_ice] run tag @s remove reloading_ice