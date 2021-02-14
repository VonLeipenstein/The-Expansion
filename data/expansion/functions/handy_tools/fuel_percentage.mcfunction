scoreboard players operation @s hold_value = @s fuel_level
scoreboard players operation @s hold_value *= calc 100
scoreboard players operation @s hold_value /= @s fuel_max
scoreboard players operation @s fuel_percentage = @s hold_value