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

#soul mage soul enter
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 2 in minecraft:overworld run tp @s 0 100 0
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 2 run effect give @s minecraft:slow_falling 25 1
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 2 run tellraw @s ["",{"text":"No Player Was Found :( You Will Be Sent To 0 100 0. ","color":"red"},{"text":"This May Change In The Future.","color":"gray"},{"text":" (If You Have Any Ideas For How This Can Be Done Better Open An Issue On ","color":"white"},{"text":"Github","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/NicholasJDi/JDi-Origins/issues"},"hoverEvent":{"action":"show_text","contents":"https://github.com/NicholasJDi/JDi-Origins/issues"},"color":"aqua"},{"text":".)","color":"white"}]
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 2 run scoreboard players reset @s jdi_origins_soul_mage_soul_enter
execute as @a at @s if score @s jdi_origins_soul_mage_soul_enter matches 1 if dimension jdi_origins:soul_realm run scoreboard players set @s jdi_origins_soul_mage_soul_enter 2
execute as @a if score @s jdi_origins_soul_mage_soul_enter matches 1 run scoreboard players reset @s jdi_origins_soul_mage_soul_enter