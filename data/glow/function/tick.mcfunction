scoreboard players enable @a glow

execute as @a[scores={glow=1..},tag=glow_enabled] run function glow:toggle_off
execute as @a[scores={glow=1..},tag=!glow_enabled] run function glow:toggle_on

effect give @a[tag=glow_enabled] minecraft:glowing infinite 0 true