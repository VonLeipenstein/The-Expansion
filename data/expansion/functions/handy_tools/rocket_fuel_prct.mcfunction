scoreboard players operation @s hold_value = @s rocket_fuel_lvl
scoreboard players operation @s hold_value *= calc 100
scoreboard players operation @s hold_value /= @s rocket_fuel_max
scoreboard players operation @s rocket_fuel_prct = @s hold_value