#run first load
execute unless score #jdi_origins_dummy jdi_origins_structure_load_complete matches 1 run function jdi_origins:structure_load

#gamemode swap toggle trigger
scoreboard players enable @a jdi_origins_dimension_gamemode_swap_toggle
execute as @a if score @s jdi_origins_dimension_gamemode_swap_toggle matches 1 run function jdi_origins:dimension_gamemode_swap_toggle

#in dimension
execute unless score #jdi_origins_dummy jdi_origins_dimension_gamemode_swap_active matches 1 in jdi_origins:soul_realm run gamemode adventure @a[gamemode=survival,distance=0..]

#not in dimension
execute unless score #jdi_origins_dummy jdi_origins_dimension_gamemode_swap_active matches 1 in minecraft:overworld run gamemode survival @a[gamemode=adventure,distance=0..]