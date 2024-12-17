execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 run scoreboard players remove @s jdi_origins_soul_mage_soul_enter_toggle 2
execute unless score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 run scoreboard players add @s jdi_origins_soul_mage_soul_enter_toggle 1
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 0 at @s as @a if score @s jdi_origins_soul_id = @p jdi_origins_player_id run tp @p @s
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 0 at @s as @a if score @s jdi_origins_soul_id = @p jdi_origins_player_id run scoreboard players reset @s jdi_origins_soul_id
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 0 run scoreboard players set @s jdi_origins_soul_mage_soul_enter 1
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 unless entity @p[distance=0.01..10] run scoreboard players set @s jdi_origins_soul_mage_soul_enter_toggle 0
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 run scoreboard players operation @p[distance=0.01..10] jdi_origins_soul_id = @s jdi_origins_player_id
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 run tellraw @p[distance=0.01..10] ["",{"color":"aqua","selector":"@s"},{"color":"aqua","text":" Is Entering Your Soul Realm."}]
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/unsupported = true}] in jdi_origins:soul_realm run tp @p 124 4 129
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/jdi_origins/spirit_fox = true}] in jdi_origins:soul_realm run tp @p 91 12 49
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/jdi_origins/soul_mage = true}] in jdi_origins:soul_realm run tp @p 86 4 91
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/origins/shulk = true}] in jdi_origins:soul_realm run tp @p 89 11 15
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/origins/phantom = true}] in jdi_origins:soul_realm run tp @p 51 11 129
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/origins/merling = true}] in jdi_origins:soul_realm run tp @p 51 12 89
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/origins/feline = true}] in jdi_origins:soul_realm run tp @p 50 5 46
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/origins/enderian = true}] in jdi_origins:soul_realm run tp @p 51 9 18
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/origins/elytrian = true}] in jdi_origins:soul_realm run tp @p 13 4 132
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/origins/blazeborn = true}] in jdi_origins:soul_realm run tp @p 14 16 91
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/origins/avian = true}] in jdi_origins:soul_realm run tp @p 16 9 50
execute if score @s jdi_origins_soul_mage_soul_enter_toggle matches 1 at @s as @p[distance=0.01..10] if entity @s[advancements={jdi_origins:origin/origins/arachnid = true}] in jdi_origins:soul_realm run tp @p 13 11 12
