scoreboard players enable @a glow_on
scoreboard players enable @a glow_off

execute as @a[scores={glow_on=1..}] run tag @s add glow_enabled
execute as @a[scores={glow_on=1..}] run effect give @s minecraft:glowing infinite 1 true
execute as @a[scores={glow_on=1..}] run scoreboard players set @s glow_on 0

execute as @a[scores={glow_off=1..}] run tag @s remove glow_enabled
execute as @a[scores={glow_off=1..}] run effect clear @s minecraft:glowing
execute as @a[scores={glow_off=1..}] run scoreboard players set @s glow_off 0

execute as @a[tag=glow_enabled,nbt=!{ActiveEffects:[{Id:24b}]}] run effect give @s minecraft:glowing infinite 0 true