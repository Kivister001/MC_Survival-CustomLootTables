#spawn_horse trigger function
tellraw @p[level=50..,scores={spawn_horse=1..}] ["",{"text":"Spell Requires","color":"dark_aqua"},{"text":" "},{"text":"50","color":"yellow"},{"text":" "},{"text":"Levels","color":"dark_aqua"}]
execute at @a[level=50..] run summon minecraft:horse ~ ~ ~
execute run xp add @a[level=50..] -50 levels

scoreboard players set @a[scores={spawn_horse=1..}] spawn_horse 0
scoreboard players enable @a spawn_horse