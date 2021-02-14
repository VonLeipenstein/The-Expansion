execute as @s run scoreboard players add @s title_timer 1
execute as @s[scores={title_timer=20..}] run title @s title {"text":"Equipment error!","color":"red","bold":true}
execute as @s[scores={title_timer=20..}] run title @s subtitle {"text":"Equip your space equipment","color":"red","bold":true}
execute as @s[scores={title_timer=20..}] run scoreboard players set @s title_timer 0
