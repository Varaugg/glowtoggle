scoreboard players enable @a glow

execute as @a[scores={glow=1..},tag=!glow_enabled] run tag @s add glow_enabled
execute as @a[scores={glow=1..},tag=!glow_enabled] run effect give @s minecraft:glowing infinite 0 true

execute as @a[scores={glow=1..},tag=glow_enabled] run tag @s remove glow_enabled
execute as @a[scores={glow=1..},tag=glow_enabled] run effect clear @s minecraft:glowing

scoreboard players set @a[scores={glow=1..}] glow 0

effect give @a[tag=glow_enabled] minecraft:glowing infinite 0 true