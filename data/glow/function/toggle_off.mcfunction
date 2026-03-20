tag @s remove glow_enabled
effect clear @s minecraft:glowing
tellraw @s {"text":"Glow disabled","color":"red"}
scoreboard players set @s glow 0