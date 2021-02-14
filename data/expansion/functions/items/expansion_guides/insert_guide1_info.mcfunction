data remove entity @s Item.tag.pages

#frontpage
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_frontpage_title",color":"black","bold":"true"},{"translate":"exp_guide1_frontpage_body",color":"black"},{"translate":"exp_guide1_frontpage_signature",color":"black"}]'
# contents
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_contents_title",color":"black","bold":"true"},{"translate":"exp_guide1_contents_start",color":"black","clickEvent":{"action":"change_page","value":"3"}},{"translate":"exp_guide1_contents_items",color":"black","clickEvent":{"action":"change_page","value":"6"}},{"translate":"exp_guide1_contents_t&g",color":"black","clickEvent":{"action":"change_page","value":"11"}},{"translate":"exp_guide1_contents_rocket",color":"black","clickEvent":{"action":"change_page","value":"18"}},{"translate":"exp_guide1_contents_buggy",color":"black","clickEvent":{"action":"change_page","value":"26"}},{"translate":"exp_guide1_contents_terraformer",color":"black","clickEvent":{"action":"change_page","value":"29"}},{"translate":"exp_guide1_contents_meteors",color":"black","clickEvent":{"action":"change_page","value":"31"}}]'
#getting started
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_start_title",color":"black","bold":"true"},{"translate":"exp_guide1_start_body",color":"black"}]'
#steel
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_steel_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff00"}]},{"translate":"exp_guide1_steel_body",color":"black"}]'
#workbench
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_bench_title",color":"black","bold":"true"},{"translate":"exp_guide1_bench_body",color":"black"}]'

#items page
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_items_title",color":"black","bold":"true"},{"translate":"exp_guide1_items_body",color":"black"}]'
#steel plate
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_plate_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff01"}]}]'
#processing unit
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_cpu_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff06"}]}]'
#oxygen tank
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_tank_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff03"}]}]'
#cooling coil
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_coil_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff15"}]}]'

# tools and gadgets
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_t&g_contents_title",color":"black","bold":"true"},{"translate":"exp_guide1_t&g_contents_equipment",color":"black","clickEvent":{"action":"change_page","value":"12"}},{"translate":"exp_guide1_t&g_contents_jetpctrl",color":"black","clickEvent":{"action":"change_page","value":"13"}},{"translate":"exp_guide1_t&g_contents_magnboots",color":"black","clickEvent":{"action":"change_page","value":"14"}},{"translate":"exp_guide1_t&g_contents_icedisp",color":"black","clickEvent":{"action":"change_page","value":"15"}},{"translate":"exp_guide1_t&g_contents_wrench",color":"black","clickEvent":{"action":"change_page","value":"17"}}]'
#space equipment
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_equipment_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff04"}]},{"translate":"exp_guide1_equipment_body",color":"black"}]'
#jetpack controller
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_jetpctrl_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff05"}]},{"translate":"exp_guide1_jetpctrl_body",color":"black"}]'
#magnetic boots
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_magnboots_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff24"}]},{"translate":"exp_guide1_magnboots_body",color":"black"}]'
#ice dispenser recipe
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_icedisp_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff07"}]},{"translate":"exp_guide1_icedisp_body",color":"black"}]'
#ice dispenser explain
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_icedisp_title",color":"black","bold":"true"},{"translate":"exp_guide1_icedisp_body2",color":"black"}]'
#wrench
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_wrench_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff02"}]},{"translate":"exp_guide1_wrench_body",color":"black"}]'

#rocket
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_rocket_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff11"}]},{"translate":"exp_guide1_rocket_body",color":"black"}]'
#rocket top
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_rockettop_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff08"}]}]'
#rocket cockpit
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_rocketcockpit_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff09"}]}]'
#rocket engines
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_rocketengines_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff10"}]}]'
#rocket explain
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_rocket_title",color":"black","bold":"true"},{"translate":"exp_guide1_rocket_body2",color":"black"}]'
#rocket explain2
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_rocketinstr_title",color":"black","bold":"true"},{"translate":"exp_guide1_rocket_body3",color":"black"}]'
#rocket explain3
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_rocketinstr_title",color":"black","bold":"true"},{"translate":"exp_guide1_rocket_body4",color":"black"}]'
#rocket explain4
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_rocketinstr_title",color":"black","bold":"true"},{"translate":"exp_guide1_rocket_body5",color":"black"}]'

#moon buggy
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_buggy_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff13"}]},{"translate":"exp_guide1_buggy_body",color":"black"}]'
#buggy wheel
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_buggywheel_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff12"}]}]'
#buggy explain
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_buggyinstr_title",color":"black","bold":"true"},{"translate":"exp_guide1_buggy_body1",color":"black"}]'

#terraformer
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_terraformer_title",color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff23"}]},{"translate":"exp_guide1_terraformer_body",color":"black"}]'
#terraformer explain
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_terraformerinstr_title",color":"black","bold":"true"},{"translate":"exp_guide1_terraformer_body1",color":"black"}]'

#meteors
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide1_meteors_title",color":"black","bold":"true"},{"translate":"exp_guide1_meteors_body",color":"black"}]'


#data modify entity @s Item.tag.pages append value '[{"translate":"exp_guide1_middle_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff01"}]}]'
#data modify entity @s Item.tag.pages append value '[{"text":"HELLO!"}]'
