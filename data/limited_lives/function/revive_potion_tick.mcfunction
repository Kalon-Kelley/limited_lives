function limited_lives:state_machine_revive_potion

execute if entity @s[scores={potion_brew_state=3}] on target if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run function limited_lives:bottle_revive_potion

execute unless block ~ ~1 ~ minecraft:water_cauldron[level=3] run kill @s
data remove entity @s interaction