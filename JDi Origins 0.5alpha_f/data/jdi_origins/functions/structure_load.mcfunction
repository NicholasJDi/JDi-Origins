#timer update
scoreboard players add #jdi_origins_dummy jdi_origins_structure_load_timer 1

#add forceload
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 32 run say add forceload
forceload add 144 144 -3 -3

#structure block load
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run say structure block load
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 0 0 0 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/arachnid",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 0 0 38 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/avian",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 0 0 76 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/blazeborn",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 0 0 114 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/elytrian",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 38 0 0 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/enderian",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 38 0 38 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/feline",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 38 0 76 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/merling",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 38 0 114 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/phantom",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 76 0 0 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/shulk",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 76 0 38 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/spirit_fox",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 76 0 76 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/soul_mage",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 64 run setblock 114 0 114 minecraft:structure_block[mode=load]{mode:"LOAD",name:"jdi_origins:soul_realm/unsupported",showboundingbox:1b,sizeX:28,sizeY:29,sizeZ:28}

#structure load
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run say structure load
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 0 1 0 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 0 1 38 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 0 1 76 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 0 1 114 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 38 1 0 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 38 1 38 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 38 1 76 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 38 1 114 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 76 1 0 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 76 1 38 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 76 1 76 minecraft:redstone_block
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 128 run setblock 114 1 114 minecraft:redstone_block

#biome load
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 192 run say biome load

#remove forceload
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run say remove forceload
forceload remove 144 144 -3 -3

#first load warning and welcome
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run tellraw @a {"text":"NicholasJDi: Thanks For Downloading JDi Origins :D"}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run tellraw @a {"text":"NicholasJDi: Sorry For The Annoying First Load Welcome But I Gotta Give You Some Warnings"}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run tellraw @a {"text":"NicholasJDi: Other Datapacks, Mods, And Maps May Be Broken By JDi Origins. Run /trigger jdi_origins_compat_help For More Info"}

#first load end
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run scoreboard players set #jdi_origins_dummy jdi_origins_dimension_gamemode_swap_active 0
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run scoreboard players set #jdi_origins_dummy jdi_origins_structure_load_complete 1