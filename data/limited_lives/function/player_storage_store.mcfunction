$data remove storage limited_lives '$(UUID)'.potion_function
$execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":\
  {custom_potion:1}}}}] run data modify storage limited_lives \
  '$(UUID)'.potion_function set from entity @s \
  SelectedItem.components.minecraft:custom_data.function