item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}
give @s minecraft:potion[minecraft:custom_data="{revive_potion:1}",minecraft:hide_additional_tooltip={},minecraft:potion_contents={potion:"minecraft:thick",custom_color:5570137},minecraft:enchantment_glint_override=true,minecraft:custom_name='{"text": "Lords Juice", "color": "#54FE59"}']
setblock ~ ~1 ~ minecraft:cauldron
kill @e[type=minecraft:interaction,tag=revive_potion_interaction,limit=1,sort=nearest]