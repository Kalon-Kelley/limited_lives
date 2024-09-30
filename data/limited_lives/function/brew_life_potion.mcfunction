summon minecraft:item_frame ~ ~ ~ {CustomName:align}
execute at @e[type=minecraft:item_frame,nbt={CustomName:'"align"'},limit=1,distance=..0.5] run summon minecraft:interaction ~ ~-0.98 ~ {width:1.02,height:1.02,CustomName:life_potion_interaction}
kill @e[type=minecraft:item_frame,nbt={CustomName:'"align"'},distance=..0.5]
execute as @e[type=minecraft:interaction,nbt={CustomName:'"life_potion_interaction"'},distance=..1] run scoreboard players set @s potion_brew_state 0
kill @s