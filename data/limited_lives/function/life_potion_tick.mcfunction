execute if entity @s[scores={potion_brew_state=3}] run particle minecraft:entity_effect{color:[0.529,1.000,0.361,1.000]} ~ ~0.8 ~ 0.15 0 0.15 0 4 force

execute unless block ~ ~1 ~ minecraft:water_cauldron[level=3] run kill @s
data remove entity @s interaction