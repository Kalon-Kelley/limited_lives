execute if entity @s[scores={potion_brew_state=0}] run tag @e[type=item,nbt={Item:{id:"minecraft:conduit"}},distance=..0.5,limit=1] add ingredient
execute if entity @s[scores={potion_brew_state=0}] run particle minecraft:entity_effect{color:[0.996,0.224,0.769,0.250]} ~ ~0.8 ~ 0.15 0 0.15 0 4 force

execute if entity @s[scores={potion_brew_state=1}] run tag @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..0.5,limit=1] add ingredient
execute if entity @s[scores={potion_brew_state=1}] run particle minecraft:entity_effect{color:[0.996,0.224,0.769,0.500]} ~ ~0.8 ~ 0.15 0 0.15 0 4 force

execute if entity @s[scores={potion_brew_state=2}] run tag @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}},distance=..0.5,limit=1] add ingredient
execute if entity @s[scores={potion_brew_state=2}] run particle minecraft:entity_effect{color:[0.996,0.224,0.769,0.750]} ~ ~0.8 ~ 0.15 0 0.15 0 4 force

execute if entity @s[scores={potion_brew_state=3}] run particle minecraft:entity_effect{color:[0.996,0.224,0.769,1.000]} ~ ~0.8 ~ 0.15 0 0.15 0 4 force

execute if entity @e[tag=ingredient] run scoreboard players add @s potion_brew_state 1
kill @e[tag=ingredient]