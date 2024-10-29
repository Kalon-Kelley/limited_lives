scoreboard players operation lives active_wager = @s wager
scoreboard players set @s wager_participate 1
title @a actionbar ["","Life Wager started for ",\
  {"score":{"name":"lives","objective":"active_wager"},"bold":true,\
  "color":"yellow"}," lives. To participate type ",\
  {"text":"/trigger wager_participate","bold":true,"color":"yellow"}]
schedule function limited_lives:wager/reset 600s replace
