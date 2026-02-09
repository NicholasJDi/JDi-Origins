execute as @a[advancements={jdi_origins:origin/origin_changed = true}] run tp @s ~ ~ ~ 0 0
power revoke @a[advancements={jdi_origins:origin/origin_changed = true}] jdi_origins:spirit_fox/looks/shy/transparent_skin
scoreboard players set @a[advancements={jdi_origins:origin/origin_changed = true}] jdi_origins_spirit_fox_shy_selector 0
team leave @a[advancements={jdi_origins:origin/origin_changed = true},team=fox]
advancement revoke @a[advancements={jdi_origins:origin/origin_changed = true}] from jdi_origins:origin/root