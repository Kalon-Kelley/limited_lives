summon minecraft:item_frame ~ ~ ~ {Tags:[align]}
execute as @e[type=minecraft:item_frame,tag=align,limit=1,distance=..1] at @s if entity @e[type=minecraft:marker,tag=potion_marker,distance=..0.3] run return run kill @s
$execute at @e[type=minecraft:item_frame,tag=align,limit=1,sort=nearest] run summon minecraft:marker ~ ~-0.3 ~ {Tags:[potion_marker],data:{info:$(info)}}
execute at @e[type=minecraft:item_frame,tag=align,limit=1,sort=nearest] as @e[type=minecraft:marker,tag=potion_marker,limit=1,sort=nearest] run scoreboard players set @s potion_brew_state 0
kill @e[type=minecraft:item_frame,tag=align,limit=1,sort=nearest]
kill @s