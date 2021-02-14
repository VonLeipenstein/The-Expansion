execute if block ~ ~-1 ~ minecraft:anvil if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}},distance=..1] run function expansion:crafter/kill_create_items
execute if block ~ ~-1 ~ minecraft:chipped_anvil if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}},distance=..1] run function expansion:crafter/kill_create_items
execute if block ~ ~-1 ~ minecraft:damaged_anvil if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}},distance=..1] run function expansion:crafter/kill_create_items

#execute if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{crafter_placer:1b}}},distance=..1] run playsound minecraft:block.anvil.use voice @p
#execute if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{crafter_placer:1b}}},distance=..1] run kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}},distance=..1,limit=1,sort=nearest]
#execute if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{crafter_placer:1b}}},distance=..1] run kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{steel_ingot:1b},Count:8b}},distance=..1,limit=1,sort=nearest]