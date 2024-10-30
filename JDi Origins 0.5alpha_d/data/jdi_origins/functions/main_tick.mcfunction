#player id handler
execute as @a unless score @s jdi_origins_player_id > #jdi_origins_dummy jdi_origins_player_id store result score @s jdi_origins_player_id run scoreboard players add #jdi_origins_next_player_id jdi_origins_player_id 1

#player leave handler
scoreboard players reset @a[scores={jdi_origins_player_leave = 1}] jdi_origins_soul_id
scoreboard players reset @a[scores={jdi_origins_player_leave = 1}] jdi_origins_player_leave

#compat help trigger
scoreboard players enable @a jdi_origins_compat_help
execute as @a if score @s jdi_origins_compat_help matches 1 run function jdi_origins:compatibility_help

#origin_selected advancement
execute as @a unless entity @s[x_rotation=0,y_rotation=0] run advancement grant @s only jdi_origins:origin/origin_selected

#spirit fox shy selector
execute as @e[type=wolf] unless score @s jdi_origins_spirit_fox_shy_selector > #jdi_origins_dummy jdi_origins_player_id run scoreboard players set @s jdi_origins_spirit_fox_shy_selector 1
execute as @a unless score @s jdi_origins_spirit_fox_shy_selector > #jdi_origins_dummy jdi_origins_player_id run scoreboard players set @s jdi_origins_spirit_fox_shy_selector 1