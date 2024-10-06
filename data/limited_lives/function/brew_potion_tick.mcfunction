execute if entity @s[nbt={data:{info:{next_ingredient:"NONE"}}}] run return \
  run function limited_lives:potion_done with entity @s data.info
$execute as @e[type=item,nbt={Item:{id:'$(next_ingredient)'}},\
  distance=..0.375,limit=1] run tag @s add ingredient
execute if entity @e[tag=ingredient,distance=..0.375] run data modify entity \
  @s data.info.next_ingredient set from entity @s data.info.ingredients[0]
execute if entity @e[tag=ingredient,distance=..0.375] run data remove entity \
  @s data.info.ingredients[0]
execute if entity @e[tag=ingredient,distance=..0.375] run scoreboard players \
  add @s potion_brew_state 1
kill @e[tag=ingredient,distance=..0.375]