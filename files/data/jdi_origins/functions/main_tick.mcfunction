#run first load
execute unless score #jdi_origins_dummy jdi_origins_structure_load_timer matches 256 in jdi_origins:soul_realm run function jdi_origins:structure_load


#player id handler
execute as @a unless score @s jdi_origins_player_id > #jdi_origins_dummy jdi_origins_player_id store result score @s jdi_origins_player_id run scoreboard players add #jdi_origins_next_player_id jdi_origins_player_id 1

#player leave handler
scoreboard players reset @a[scores={jdi_origins_player_leave = 1}] jdi_origins_soul_id

scoreboard players reset @a[scores={jdi_origins_player_leave = 1}] jdi_origins_player_leave

#origin_selected advancement
execute as @a unless entity @s[x_rotation=0,y_rotation=0] run advancement grant @s only jdi_origins:origin/origin_selected

#spirit fox shy selector
execute as @e[type=wolf] unless score @s jdi_origins_spirit_fox_shy_selector > #jdi_origins_dummy jdi_origins_player_id run scoreboard players set @s jdi_origins_spirit_fox_shy_selector 1
execute as @a unless score @s jdi_origins_spirit_fox_shy_selector > #jdi_origins_dummy jdi_origins_player_id run scoreboard players set @s jdi_origins_spirit_fox_shy_selector 1

#spirit fox foxy friends selector
team join fox @e[type=fox,team=!fox]

#in soul realm
execute unless score #jdi_origins_dummy jdi_origins_disable_dimension_gamemode_swap matches 1 in jdi_origins:soul_realm run gamemode adventure @a[gamemode=survival,distance=0..]

#soul mage soul enter
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 2 in minecraft:overworld run tp @s 0 100 0
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 2 run effect give @s minecraft:slow_falling 25 1
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 2 unless score #jdi_origins_dummy jdi_origins_disable_dimension_gamemode_swap matches 1 run gamemode survival @s
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 2 run tellraw @s ["",{"text":"ERROR:","bold":true,"color":"dark_red"},{"text":"Valid target could not be found.","bold":true,"color":"red"},{"text":"You will be sent to 0 100 0.","color":"gray","italic":true}]
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 2 run scoreboard players reset @s jdi_origins_soul_mage_soul_enter
execute as @a at @s if score @s jdi_origins_soul_mage_soul_enter matches 1 if dimension jdi_origins:soul_realm run scoreboard players set @s jdi_origins_soul_mage_soul_enter 2
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 1 run scoreboard players reset @s jdi_origins_soul_mage_soul_enter