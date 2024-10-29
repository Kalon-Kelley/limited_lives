# Enable wager trigger for everyone unless there is an active wager
execute as @a unless score lives active_wager matches 1.. run scoreboard \
  players enable @s wager
# Revoke trigger access to anyone who has it if there is an active wager
execute as @a if score lives active_wager matches 1.. if score \
  @s wager = @s wager run scoreboard players reset @s wager
# Allow participation if there is an active wager and they have enough lives
execute as @a unless score @s lives < lives active_wager if score lives \
  active_wager matches 1.. unless score @s wager_participate = @s \
  wager_participate run scoreboard players enable @s wager_participate
# If a players lives goes below the active wager revoke participation access
execute as @a if score @s lives < lives active_wager run scoreboard \
  players reset @s wager_participate
# If there is no active wager reset all participations
execute as @a unless score lives active_wager = lives active_wager run \
  scoreboard players reset @s wager_participate
# If someone triggers an acceptable wager and there isn't an active wager set it
execute as @a[scores={wager=1..}] unless score lives active_wager matches 1.. \
  unless score @s wager > @s lives run function limited_lives:wager/set
# If a player has a wager_participate value != 0 or 1 reset it
execute as @a unless score @s wager_participate matches 0..1 if score @s \
  wager_participate = @s wager_participate run scoreboard players reset @s \
  wager_participate
# Revoke advancements needed for wager tracking
execute as @a run advancement revoke @s from limited_lives:die_wager_player
execute as @a run advancement revoke @s from limited_lives:kill_wager_player
# Set all players participation status who have completed the wager to 0
execute as @a[tag=wager_done] run scoreboard players set @s wager_participate 0
# Display scoreboard functionality
scoreboard objectives remove wager_display
execute if score lives active_wager matches 1.. run function \
  limited_lives:wager/display
# If there are no participants in the wager reset it early
execute if score lives active_wager matches 1.. unless entity \
  @a[scores={wager_participate=1}] run schedule function \
  limited_lives:wager/reset 1t replace
