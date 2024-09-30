execute at @s as @e[type=minecraft:interaction,distance=..0.45,nbt={CustomName:'"life_potion_interaction"'},scores={potion_brew_state=0}] run scoreboard players set @s potion_brew_state 1
kill @s