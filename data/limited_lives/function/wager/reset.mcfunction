tellraw @a ["",{"text":"The active wager has ended, use "},\
  {"text":"/trigger wager set [amount]","bold":true,"color":"yellow"},\
  {"text":" to start another"}]
scoreboard players reset lives active_wager
execute as @a[tag=wager_done] run tag @s remove wager_done
