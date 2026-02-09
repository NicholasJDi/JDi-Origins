#timer update
scoreboard players add #jdi_origins_dummy jdi_origins_structure_load_timer 1

#add forceload
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 32 run say add forceload
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 32 run forceload add 144 144 -3 -3

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
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 192 run fillbiome 26 27 26 1 2 1 minecraft:dark_forest
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 192 run fillbiome 1 27 39 26 2 64 minecraft:windswept_hills
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 192 run fillbiome 39 27 39 64 2 64 minecraft:jungle
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 192 run fillbiome 64 27 77 39 2 102 minecraft:warm_ocean
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 192 run fillbiome 77 27 39 102 2 64 minecraft:cherry_grove

#remove forceload
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run say remove forceload
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run forceload remove 144 144 -3 -3

#other
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 in jdi_origins:soul_realm as @e[type=wolf,limit=1,distance=0..] run scoreboard players set @s jdi_origins_spirit_fox_shy_selector 2

#first load warning and welcome
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run tellraw @a {"text":"NicholasJDi: Thanks For Downloading JDi Origins :D"}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run tellraw @a {"text":"NicholasJDi: Sorry For The Annoying First Load Welcome But I Gotta Give You Some Warnings"}
execute if score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 run tellraw @a {"text":"NicholasJDi: Other Datapacks, Mods, And Maps May Be Broken By JDi Origins. Run /function jdi_origins:compat_help For More Info."}