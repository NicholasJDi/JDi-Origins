execute if score #jdi_origins_dummy jdi_origins_dimension_gamemode_swap_active matches 1 run scoreboard players remove #jdi_origins_dummy jdi_origins_dimension_gamemode_swap_active 2

execute unless score #jdi_origins_dummy jdi_origins_dimension_gamemode_swap_active matches 1 run scoreboard players add #jdi_origins_dummy jdi_origins_dimension_gamemode_swap_active 1

execute if score #jdi_origins_dummy jdi_origins_dimension_gamemode_swap_active matches 0 run tellraw @a {"text":"NicholasJDi: Dimension Gamemode Swap Enabled"}

execute if score #jdi_origins_dummy jdi_origins_dimension_gamemode_swap_active matches 1 run tellraw @a {"text":"NicholasJDi: Dimension Gamemode Swap Disabled"}

scoreboard players reset @a jdi_origins_dimension_gamemode_swap_toggle