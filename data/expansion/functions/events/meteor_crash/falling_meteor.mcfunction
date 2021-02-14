execute at @s[nbt={OnGround:0b}] run particle minecraft:explosion ~ ~ ~ 2 2 2 0 50 force
execute at @s[nbt={OnGround:0b}] run particle minecraft:campfire_signal_smoke ~ ~ ~ 2 2 2 0 50 force

execute at @s[nbt={OnGround:0b}] run summon minecraft:tnt ~ ~ ~
execute at @s[nbt={OnGround:0b}] run data merge entity @s {Motion:[0.0,-2.0,-1.0]}
execute as @s[nbt={OnGround:1b}] run scoreboard players set meteor_impact expansion_timer 2
execute as @s[nbt={OnGround:1b}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["landed_meteor"],Invisible:1b}
execute as @s[nbt={OnGround:1b}] run kill @s

