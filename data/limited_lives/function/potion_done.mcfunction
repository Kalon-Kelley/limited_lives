summon minecraft:interaction ~ ~-0.5 ~ {height:0.85,width:1.02,\
  Tags:[potion_interaction],response:1}
$summon minecraft:marker ~ ~-0.5 ~ {data:{functions:$(functions)},\
  Tags:[interaction_marker]}
execute positioned ~ ~1 ~ as @e[type=minecraft:item_display,distance=..0.1] \
  run kill @s
kill @s