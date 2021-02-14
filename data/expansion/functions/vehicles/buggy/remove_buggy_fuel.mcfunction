scoreboard players add @p expansion_timer 1
clear @p[scores={expansion_timer=40..}] minecraft:coal 1
scoreboard players set @p[scores={expansion_timer=40..}] expansion_timer 0

execute as @p unless entity @s[nbt={Inventory:[{id:"minecraft:coal"}]}] run function expansion:handy_tools/error_messages/gather_more_coal