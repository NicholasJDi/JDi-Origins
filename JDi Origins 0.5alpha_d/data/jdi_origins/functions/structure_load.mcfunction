#timer update
scoreboard players add #jdi_origins_dummy jdi_origins_structure_load_timer 1

#add forceload
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 10 run say add forceload

#structure block load
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 20 run say structure block load

#structure load
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 30 run say structure load

#biome load
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 40 run say biome load

#remove forceload
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 50 run say remove forceload

#first load warning and welcome
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 60 run tellraw @a {"text":"NicholasJDi: Thanks For Downloading JDi Origins :D"}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 60 run tellraw @a {"text":"NicholasJDi: Sorry For The Annoying First Load Welcome But I Gotta Give You Some Warnings"}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 60 run tellraw @a {"text":"NicholasJDi: Other Datapacks, Mods, And Maps May Be Broken By JDi Origins. Run /trigger jdi_origins_compat_help For More Info"}

#first load end
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 60 run scoreboard players set #jdi_origins_dummy jdi_origins_dimension_gamemode_active 0
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 60 run scoreboard players set #jdi_origins_dummy jdi_origins_structure_load_complete 1