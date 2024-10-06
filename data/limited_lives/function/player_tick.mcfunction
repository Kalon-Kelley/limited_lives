execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{life_potion:1}}}}] run scoreboard players set @s holding_life_potion 1
execute if entity @s[scores={drank_potion=1,held_life_potion=1}] run scoreboard players set @s drank_life_potion 1
scoreboard players operation @s held_life_potion = @s holding_life_potion
scoreboard players reset @s holding_life_potion