scoreboard players set @p[scores={lives=0},limit=1] revived 1
# Setting revived to 1 no longer auto revives a player since it must be done
# with the potion
execute as @a[scores={revived=1}] run gamemode survival @s
execute as @a[scores={revived=1}] run effect clear @s
execute as @a[scores={revived=1}] run scoreboard players set @s lives 3
scoreboard players reset @a revived