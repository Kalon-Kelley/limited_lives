item modify entity @s weapon.mainhand \
  {function:"minecraft:set_count",count:-1,add:true}
give @s minecraft:potion[minecraft:custom_data='{custom_potion:1,\
  function:"limited_lives:drinking/revive_potion"}',\
  minecraft:hide_additional_tooltip={},minecraft:potion_contents=\
  {potion:"minecraft:thick",custom_color:5570137},\
  minecraft:enchantment_glint_override=true,\
  minecraft:custom_name='{"text": "Lords Juice", "color": "#54FE59"}']
setblock ~ ~ ~ minecraft:cauldron
kill @e[type=minecraft:interaction,tag=potion_interaction,limit=1,sort=nearest]
kill @e[type=minecraft:marker,tag=interaction_marker,limit=1,sort=nearest]
kill @e[type=minecraft:marker,tag=potion_marker,limit=1,sort=nearest]