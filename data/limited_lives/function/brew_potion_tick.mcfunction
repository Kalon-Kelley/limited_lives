execute if entity @s[nbt={data:{info:{next_ingredient:"NONE"}}}] run return \
  run function limited_lives:potion_done with entity @s data.info
$execute as @e[type=item,nbt={Item:{id:'$(next_ingredient)'}},\
  distance=..0.375,limit=1] run tag @s add ingredient
$execute positioned ~ ~1 ~ as @e[type=minecraft:item_display,distance=..0.1,\
  nbt=!{item:{id:'$(next_ingredient)'}}] run data modify entity @s item.id set \
  value '$(next_ingredient)'
$execute positioned ~ ~1 ~ unless entity @e[type=minecraft:item_display\
  ,distance=..0.1] run summon minecraft:item_display ~ ~ ~ \
  {item:{id:'$(next_ingredient)'},billboard:vertical,transformation:\
  {left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],\
  translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute if entity @e[tag=ingredient,distance=..0.375] run data modify entity \
  @s data.info.next_ingredient set from entity @s data.info.ingredients[0]
execute if entity @e[tag=ingredient,distance=..0.375] run data remove entity \
  @s data.info.ingredients[0]
execute if entity @e[tag=ingredient,distance=..0.375] run scoreboard players \
  add @s potion_brew_state 1
kill @e[tag=ingredient,distance=..0.375]