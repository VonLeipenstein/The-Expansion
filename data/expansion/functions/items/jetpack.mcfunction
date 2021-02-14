execute as @s run function expansion:handy_tools/armor_tags/helmet_on
execute as @s[tag=helmet_on] run title @s title {"text":"Remove your helmet","color":"gold","bold":true}

execute as @s[tag=!helmet_on] run clear @s carrot_on_a_stick{space_jetpack:1b} 1
execute as @s[tag=!helmet_on] run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{display:{Name:'{"text":"Space Equipment","color":"white","bold":false,"italic":false,"underlined":false}'},Unbreakable:1b,CustomModelData:1012100,space_jetpack:1b} 1

tag @s remove helmet_on