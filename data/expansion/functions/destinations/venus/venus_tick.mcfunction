execute as @s run scoreboard players add @s lightning_timer 1
execute as @s[scores={lightning_timer=80}] run scoreboard players set @s lightning_timer 0
execute as @s[scores={lightning_timer=1}] run function expansion:events/venus/venus_lightning

function expansion:handy_tools/low_oxygen