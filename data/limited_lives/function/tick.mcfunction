# Every tick
execute as @a[scores={drank_potion=1}] at @s run function \
  limited_lives:apply_effect with entity @s
scoreboard players reset @a drank_potion

# If a player dies decrement their lives by 1 and if they get to 0 set them to
# spectator
execute as @a[scores={died=1}] run scoreboard players remove @s lives 1
scoreboard players reset @a died
execute as @a[scores={lives=0}] run gamemode spectator @s
execute as @a[scores={lives=0}] run spectate @p[scores={lives=1..}]

# Set default 
execute as @a unless score @s lives matches -1.. run scoreboard players set @s \
  lives 3

execute as @e[type=item,nbt={Item:{components:\
  {"minecraft:custom_data":{potion_book:1b}}}}] at @s if block ~ ~ ~ \
  minecraft:water_cauldron[level=3] run function limited_lives:brew_potion \
  with entity @s Item.components.minecraft:custom_data
execute as @e[type=minecraft:marker,tag=potion_marker] at @s run function \
  limited_lives:brew_potion_tick with entity @s data.info
execute as @e[type=minecraft:interaction,tag=potion_interaction] at @s \
  run function limited_lives:bottle_potion_tick with entity \
  @e[type=minecraft:marker,tag=interaction_marker,distance=..0.1,limit=1] \
  data.functions

execute as @e[type=minecraft:interaction,tag=potion_interaction] at @s unless \
  block ~ ~ ~ minecraft:water_cauldron run kill @s
execute as @e[type=minecraft:marker,tag=interaction_marker] at @s unless \
  entity @e[type=minecraft:interaction,distance=..0.1,tag=potion_interaction] \
  run kill @s
execute as @a run function limited_lives:player_storage_store with entity @s

function limited_lives:wager_tick
