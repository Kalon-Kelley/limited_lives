summon minecraft:item_frame ~ ~ ~ {CustomName:align,Facing:1b}
execute as @e[type=minecraft:item_frame,nbt={CustomName:'"align"'},limit=1,distance=..1] at @s if entity @e[type=minecraft:interaction,nbt={CustomName:'"life_potion_interaction"'},distance=..0.1] run return run kill @s
execute at @e[type=minecraft:item_frame,nbt={CustomName:'"align"'},limit=1,distance=..1] run summon minecraft:interaction ~ ~-0.05 ~ {width:1.02,height:1.02,CustomName:life_potion_interaction}
execute at @e[type=minecraft:item_frame,nbt={CustomName:'"align"'},limit=1,distance=..1] as @e[type=minecraft:interaction,nbt={CustomName:'"life_potion_interaction"'},distance=..0.1] run scoreboard players set @s potion_brew_state 0
kill @e[type=minecraft:item_frame,nbt={CustomName:'"align"'},limit=1,distance=..1]
kill @s