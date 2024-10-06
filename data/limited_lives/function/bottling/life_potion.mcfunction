item modify entity @s weapon.mainhand \
  {function:"minecraft:set_count",count:-1,add:true}
give @s minecraft:potion[minecraft:custom_data="{life_potion:1}"\
  ,minecraft:hide_additional_tooltip={},minecraft:potion_contents=\
  {potion:"minecraft:thick",custom_color:16660932},\
  minecraft:enchantment_glint_override=true,\
  minecraft:custom_name='{"text": "Life Elixir", "color": "#FE39C4"}']
setblock ~ ~ ~ minecraft:cauldron
kill @e[type=minecraft:interaction,tag=potion_interaction,limit=1,sort=nearest]