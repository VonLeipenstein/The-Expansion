scoreboard players add @s extract_timer 1

execute as @s[scores={extract_timer=1200..}] run loot insert ~ ~1 ~ loot expansion:machines/lacrymae
execute as @s[scores={extract_timer=1200..}] at @s run playsound minecraft:block.brewing_stand.brew voice @a
execute as @s[scores={extract_timer=1200..}] run particle minecraft:witch ~ ~2 ~ 0.3 0.3 0.3 0 50 force
execute as @s[scores={extract_timer=1200..}] run particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0 50 force

execute as @s[scores={extract_timer=1200..}] run fill ~ ~2 ~ ~ ~2 ~ minecraft:obsidian replace minecraft:crying_obsidian

execute as @s[scores={extract_timer=1200..}] run scoreboard players set @s extract_timer 0