execute as @s[scores={launch_timer=1..}] run particle minecraft:flame ~ ~1 ~ 4 0.1 4 0 100
#execute as @s[scores={launch_timer=1..}] at @s run particle minecraft:large_smoke ~ ~ ~ 4 0.1 4 0 10
execute as @s[scores={launch_timer=1..}] run particle minecraft:campfire_signal_smoke ~ ~1 ~ 4 2 4 0 20

execute as @s[scores={launch_timer=200}] run title @p title {"text":"10","color":"gold","bold":true}
execute as @s[scores={launch_timer=180}] run title @p title {"text":"9","color":"gold","bold":true}
execute as @s[scores={launch_timer=160}] run title @p title {"text":"8","color":"gold","bold":true}
execute as @s[scores={launch_timer=140}] run title @p title {"text":"7","color":"gold","bold":true}
execute as @s[scores={launch_timer=120}] run title @p title {"text":"6","color":"gold","bold":true}
execute as @s[scores={launch_timer=100}] run title @p title {"text":"5","color":"gold","bold":true}
execute as @s[scores={launch_timer=80}] run title @p title {"text":"4","color":"gold","bold":true}
execute as @s[scores={launch_timer=60}] run title @p title {"text":"3","color":"gold","bold":true}
execute as @s[scores={launch_timer=40}] run title @p title {"text":"2","color":"gold","bold":true}
execute as @s[scores={launch_timer=20}] run title @p title {"text":"1","color":"gold","bold":true}
execute as @s[scores={launch_timer=1}] run title @p title {"text":"LAUNCH!","color":"gold","bold":true}

execute as @s[scores={launch_timer=200}] run playsound block.anvil.place master @p
execute as @s[scores={launch_timer=180}] run playsound block.anvil.place master @p
execute as @s[scores={launch_timer=160}] run playsound block.anvil.place master @p
execute as @s[scores={launch_timer=140}] run playsound block.anvil.place master @p
execute as @s[scores={launch_timer=120}] run playsound block.anvil.place master @p
execute as @s[scores={launch_timer=100}] run playsound block.anvil.place master @p
execute as @s[scores={launch_timer=80}] run playsound block.anvil.place master @p
execute as @s[scores={launch_timer=60}] run playsound block.anvil.place master @p
execute as @s[scores={launch_timer=40}] run playsound block.anvil.place master @p
execute as @s[scores={launch_timer=20}] run playsound block.anvil.place master @p

execute as @s[scores={launch_timer=1}] run title @p subtitle {"text":"Do not leave the rocket from now on.","color":"gold","bold":true}

execute as @s[scores={launch_timer=1..}] run scoreboard players remove @s launch_timer 1

execute as @s[scores={launch_timer=0}] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:fire replace minecraft:air
