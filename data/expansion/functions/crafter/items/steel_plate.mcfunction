execute at @s run data merge block ~ ~ ~ {LootTable:"minecraft:empty"}
execute at @s run loot replace block ~ ~ ~ container.4 loot expansion:crafting/items/steel_plate
execute as @p at @s run playsound minecraft:block.anvil.use voice @s