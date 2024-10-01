execute at @s[scores={potion_brew_state=0}] run tag @e[type=item,nbt={Item:{id:"minecraft:conduit"}},distance=..0.5,limit=1] add ingredient
execute at @s[scores={potion_brew_state=1}] run tag @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..0.5,limit=1] add ingredient
execute at @s[scores={potion_brew_state=2}] run tag @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}},distance=..0.5,limit=1] add ingredient

execute if entity @e[tag=ingredient] run scoreboard players add @s potion_brew_state 1
kill @e[tag=ingredient]