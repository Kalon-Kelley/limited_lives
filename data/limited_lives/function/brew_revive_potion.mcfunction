summon minecraft:item_frame ~ ~ ~ {Tags:[align],Facing:1b}
execute as @e[type=minecraft:item_frame,tag=align,limit=1,distance=..1] at @s if entity @e[type=minecraft:interaction,tag=revive_potion_interaction,distance=..0.1] run return run kill @s
execute at @e[type=minecraft:item_frame,tag=align,limit=1,sort=nearest] run summon minecraft:interaction ~ ~-0.05 ~ {width:1.02,height:1.02,Tags:[revive_potion_interaction],response:1}
execute at @e[type=minecraft:item_frame,tag=align,limit=1,sort=nearest] as @e[type=minecraft:interaction,tag=revive_potion_interaction,limit=1,sort=nearest] run scoreboard players set @s potion_brew_state 0
kill @e[type=minecraft:item_frame,tag=align,limit=1,sort=nearest]
kill @s