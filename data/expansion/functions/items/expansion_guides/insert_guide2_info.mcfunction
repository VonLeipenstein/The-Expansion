data remove entity @s Item.tag.pages

#frontpage
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_frontpage_title","color":"black","bold":"true"},{"translate":"exp_guide2_frontpage_body","color":"black"}]'
# contents
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_contents_title","color":"black","bold":"true"},{"translate":"exp_guide2_contents_start","color":"black","clickEvent":{"action":"change_page","value":"3"}},{"translate":"exp_guide2_contents_lacrymae","color":"black","clickEvent":{"action":"change_page","value":"5"}},{"translate":"exp_guide2_contents_spaceship","color":"black","clickEvent":{"action":"change_page","value":"7"}},{"translate":"exp_guide2_contents_planetarium","color":"black","clickEvent":{"action":"change_page","value":"13"}},{"translate":"exp_guide2_contents_tospace","color":"black","clickEvent":{"action":"change_page","value":"15"}},{"translate":"exp_guide2_contents_toplanet","color":"black","clickEvent":{"action":"change_page","value":"16"}}]'
#getting started
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_start_title","color":"black","bold":"true"},{"translate":"exp_guide2_start_body","color":"black"}]'
#getting started2
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_start_title","color":"black","bold":"true"},{"translate":"exp_guide2_start_body2","color":"black"}]'

#lacrymae intro
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_lacrymae_title","color":"black","bold":"true"},{"translate":"exp_guide2_lacrymae_body","color":"black"}]'
#lacrymae crafting
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_extractor_title","color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff21"}]},{"translate":"exp_guide2_extractor_body","color":"black"}]'

#spaceship
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_spaceship_title","color":"black","bold":"true"},{"translate":"exp_guide2_spaceship_body","color":"black"}]'
#spaceship crafting
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_spaceship_title","color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff20"}]}]'
#spaceship engines
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_ssengines_title","color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff16"}]}]'
#spaceship thruster
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_ssthruster_title","color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff14"}]}]'
#spaceship cockpit
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_sscockpit_title","color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff17"}]}]'
#spaceship wings
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_sswings_title","color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff18"}]},{"translate":"exp_guide_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff19"}]}]'

#planetarium
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_planetarium_title","color":"black","bold":"true"},{"translate":"exp_guide2_planetarium_body","color":"black"}]'
#planetarium craft
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_planetarium_title","color":"black","bold":"true"},{"translate":"exp_guide_top_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff22"}]}]'

#going to space
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_tospace_title","color":"black","bold":"true"},{"translate":"exp_guide2_tospace_body","color":"black"}]'

#going to planets
data modify entity @s Item.tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"exp_guide2_toplanet_title","color":"black","bold":"true"},{"translate":"exp_guide2_toplanet_body","color":"black"}]'


#data modify entity @s Item.tag.pages append value '[{"translate":"exp_guide_middle_center_image","color":"white","font":"expansion:default","with":[{"text":"\\uff01"}]}]'
#data modify entity @s Item.tag.pages append value '[{"text":"HELLO!"}]'
