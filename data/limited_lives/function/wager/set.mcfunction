scoreboard players operation lives active_wager = @s wager
tellraw @a ["","A life wager has been started for ",\
  {"score":{"name":"lives","objective":"active_wager"},"bold":true,\
  "color":"yellow"}," lives. To participate type ",\
  {"text":"/trigger wager_participate","bold":true,"color":"yellow"}]
schedule function limited_lives:wager/reset 600s replace
