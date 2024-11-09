execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 run scoreboard players remove @s jdi_origins_soul_mage_soul_enter_toggle 2
execute unless score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 run scoreboard players add @s jdi_origins_soul_mage_soul_enter_toggle 1
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 0 at @s as @a if score @s jdi_origins_soul_id = @p jdi_origins_player_id run tp @p @s
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 0 at @s as @a if score @s jdi_origins_soul_id = @p jdi_origins_player_id run scoreboard players reset @s jdi_origins_soul_id
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 0 run scoreboard players set @s jdi_origins_soul_mage_soul_enter 1
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 unless entity @p[distance=0.01..10] run scoreboard players set @s jdi_origins_soul_mage_soul_enter_toggle 0
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 run scoreboard players operation @p[distance=0.01..10] jdi_origins_soul_id = @s jdi_origins_player_id
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 run tellraw @p[distance=0.01..10] ["",{"color":"aqua","selector":"@s"},{"color":"aqua","text":" Is Entering Your Soul Realm."}]
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/jdi_origins/spirit_fox = true}] in jdi_origins:soul_realm run tp @p 0 0 0