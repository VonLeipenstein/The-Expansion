scoreboard objectives add expansion_rc minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add expansion_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add expansion_jump minecraft.custom:minecraft.jump
scoreboard objectives add expansion_sprint minecraft.custom:minecraft.sprint_one_cm

scoreboard objectives add rocket_optns trigger

scoreboard objectives add spaceship_optns trigger
scoreboard objectives add demount_optns trigger
scoreboard objectives add buggy_optns trigger

scoreboard objectives add control_earth trigger
scoreboard objectives add control_moon trigger
scoreboard objectives add control_mars trigger
scoreboard objectives add control_venus trigger
scoreboard objectives add control_astroids trigger
scoreboard objectives add control_mercury trigger

scoreboard objectives add is_fueling dummy
scoreboard objectives add rocket_fuel_lvl dummy
scoreboard objectives add rocket_fuel_max dummy
scoreboard objectives add rocket_fuel_prct dummy

scoreboard objectives add inside_spaceship dummy
scoreboard objectives add spaceship_speed dummy
scoreboard objectives add optn_cooldown dummy
scoreboard objectives add exit_bool dummy
scoreboard objectives add fuel_max dummy
scoreboard objectives add fuel_level dummy
scoreboard objectives add fuel_percentage dummy
scoreboard objectives add hold_value dummy
scoreboard objectives add transition_debug dummy

scoreboard objectives add inside_buggy dummy
scoreboard objectives add buggy_speed dummy

scoreboard objectives add expansion_timer dummy
scoreboard objectives add fuel_timer dummy
scoreboard objectives add title_timer dummy
scoreboard objectives add sound_timer dummy
scoreboard objectives add launch_timer dummy
scoreboard objectives add lightning_timer dummy
scoreboard objectives add countdown_start dummy

scoreboard objectives add terraform dummy
scoreboard objectives add mode_switcher dummy
scoreboard objectives add terraform_grass dummy
scoreboard objectives add terraform_flower dummy
scoreboard objectives add terraform_tree dummy

scoreboard objectives add extract_timer dummy
scoreboard objectives add extract_count dummy

scoreboard objectives add ice_ammo dummy
scoreboard objectives add max_range dummy
scoreboard objectives add ice_disp_mode dummy

scoreboard objectives add meteors dummy

scoreboard objectives add expansion_x dummy
scoreboard objectives add expansion_y dummy
scoreboard objectives add expansion_z dummy

scoreboard objectives add expansion_dx dummy
scoreboard objectives add expansion_dy dummy
scoreboard objectives add expansion_dz dummy

scoreboard objectives add 100 dummy
scoreboard objectives add 1000 dummy

# dimension 0 = overworld
# dimension 1 = nether
# dimension 2 = end
# dimension 3 = space
# dimension 4 = moon
# dimension 5 = mars
# dimension 6 = venus
# dimension 7 = asteroids
# dimension 8 = mercury

scoreboard objectives add expansion_dim dummy

scoreboard objectives add tick_distributer dummy
scoreboard objectives add gen_success dummy
scoreboard objectives add delay dummy
scoreboard objectives add percentage dummy
scoreboard objectives add max dummy

scoreboard players set calc 100 100
scoreboard players set calc 1000 1000
scoreboard objectives add value dummy

scoreboard players set #reload delay 40
execute unless score global meteors matches 0.. run scoreboard players set global meteors 1
