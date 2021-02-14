loot spawn ~ ~ ~ loot expansion:blocks/expansion_crafter

playsound minecraft:block.anvil.use voice @p
kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}},distance=..1,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{steel_ingot:1b},Count:8b}},distance=..1,limit=1,sort=nearest]