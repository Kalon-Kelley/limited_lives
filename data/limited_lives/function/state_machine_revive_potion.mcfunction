execute if entity @s[scores={potion_brew_state=0}] run tag @e[type=item,nbt={Item:{id:"minecraft:sponge"}},distance=..0.5,limit=1] add ingredient
execute if entity @s[scores={potion_brew_state=0}] run particle minecraft:entity_effect{color:[0.329,0.996,0.349,0.250]} ~ ~0.8 ~ 0.15 0 0.15 0 4 force

execute if entity @s[scores={potion_brew_state=1}] run tag @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..0.5,limit=1] add ingredient
execute if entity @s[scores={potion_brew_state=1}] run particle minecraft:entity_effect{color:[0.329,0.996,0.349,0.500]} ~ ~0.8 ~ 0.15 0 0.15 0 4 force

execute if entity @s[scores={potion_brew_state=2}] run tag @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..0.5,limit=1] add ingredient
execute if entity @s[scores={potion_brew_state=2}] run particle minecraft:entity_effect{color:[0.329,0.996,0.349,0.750]} ~ ~0.8 ~ 0.15 0 0.15 0 4 force

execute if entity @s[scores={potion_brew_state=3}] run particle minecraft:entity_effect{color:[0.329,0.996,0.349,1.000]} ~ ~0.8 ~ 0.15 0 0.15 0 4 force

execute if entity @e[tag=ingredient] run scoreboard players add @s potion_brew_state 1
kill @e[tag=ingredient]