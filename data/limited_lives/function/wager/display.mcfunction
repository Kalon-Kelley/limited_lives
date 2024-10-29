scoreboard objectives add wager_display dummy {"text":"Current Life Wager",\
  "color":"yellow"}
scoreboard players operation Amount wager_display = lives active_wager
scoreboard players set -----Participants----- wager_display 0
execute as @a[scores={wager_participate=1}] run scoreboard players set @s \
  wager_display -1
scoreboard objectives setdisplay sidebar wager_display
