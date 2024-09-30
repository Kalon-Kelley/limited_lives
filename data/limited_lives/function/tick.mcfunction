# Every tick
execute as @a if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{life_potion:1}}}}] run scoreboard players set @s holding_life_potion 1
execute as @a[scores={drank_potion=1,held_life_potion=1}] run scoreboard players set @s drank_life_potion 1
execute as @a run scoreboard players operation @s held_life_potion = @s holding_life_potion
scoreboard players reset @a holding_life_potion

execute as @a if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{revive_potion:1}}}}] run scoreboard players set @s holding_revive_potion 1
execute as @a[scores={drank_potion=1,held_revive_potion=1}] run scoreboard players set @s drank_revive_potion 1
execute as @a run scoreboard players operation @s held_revive_potion = @s holding_revive_potion
scoreboard players reset @a holding_revive_potion
scoreboard players reset @a drank_potion

# If the player drank a life potion increment their lives
execute as @a[scores={drank_life_potion=1}] run scoreboard players add @s lives 1
scoreboard players reset @a drank_life_potion

# If the player drank a revive potion set the nearest players (who's dead) revived to 1
execute as @a[scores={drank_revive_potion=1}] run scoreboard players set @p[scores={lives=0},limit=1] revived 1
execute as @a[scores={revived=1}] run gamemode survival @s
execute as @a[scores={revived=1}] run effect clear @s
execute as @a[scores={revived=1}] run scoreboard players set @s lives 3
scoreboard players reset @a revived
scoreboard players reset @a drank_revive_potion

# If a player dies decrement their lives by 1 and if they get to 0 set them to spectator
execute as @a[scores={died=1}] run scoreboard players remove @s lives 1
scoreboard players reset @a died
execute as @a[scores={lives=0}] run gamemode spectator @s
execute as @a[scores={lives=0}] run spectate @p[scores={lives=1..}]

# Set default 
execute as @a unless score @s lives matches -1.. run scoreboard players set @s lives 3

execute as @e[type=item,nbt={Item:{id:"minecraft:ominous_trial_key"}}] at @s if block ~ ~ ~ minecraft:water_cauldron[level=3] run function limited_lives:brew_life_potion
execute as @e[type=item,nbt={Item:{id:"minecraft:conduit"}}] at @s if entity @e[type=minecraft:interaction,distance=..0.45,nbt={CustomName:'"life_potion_interaction"'},scores={potion_brew_state=0}] run function limited_lives:life_potion_state_0