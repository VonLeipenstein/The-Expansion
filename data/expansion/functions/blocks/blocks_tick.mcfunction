# terradome
execute as @e[type=armor_stand,tag=shield_generator] at @s run function expansion:blocks/terraformer/shield_generator
execute as @e[type=armor_stand,tag=shield_generator] at @s unless block ~ ~ ~ minecraft:spawner run function expansion:blocks/terraformer/destroy

# custom crafter
execute as @e[type=armor_stand,tag=expansion_crafter] at @s unless block ~ ~ ~ minecraft:dropper run function expansion:crafter/destroy
execute at @a as @e[type=armor_stand,tag=expansion_crafter,distance=..5,limit=1,sort=random] run function expansion:crafter/recipes
execute as @e[type=item,nbt={Item:{id:"minecraft:jigsaw",tag:{steel_ingot:1b},Count:8b}}] at @s run function expansion:crafter/create

# lacrymae extractor
execute as @e[type=armor_stand,tag=lacrymae_extractor] at @s unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/lacrymae_extractor/destroy
execute as @e[type=armor_stand,tag=lacrymae_extractor] at @s unless block ~ ~1 ~ minecraft:hopper run function expansion:blocks/lacrymae_extractor/destroy
execute as @e[type=armor_stand,tag=lacrymae_extractor] at @s if block ~ ~2 ~ minecraft:crying_obsidian run function expansion:blocks/lacrymae_extractor/extract

#planetarium
execute as @e[type=armor_stand,tag=planetarium] at @s unless block ~ ~ ~ minecraft:spawner run function expansion:blocks/planetarium/destroy
execute as @e[type=armor_stand,tag=planetarium] at @s if entity @p[distance=..50] run function expansion:blocks/planetarium/spin
