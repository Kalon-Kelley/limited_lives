execute as @a unless score lives active_wager matches 1.. run scoreboard \
  players enable @s wager
execute as @a if score lives active_wager matches 1.. if score \
  @s wager = @s wager run scoreboard players reset @s wager
execute as @a unless score @s lives < lives active_wager if score lives \
  active_wager matches 1.. unless score @s wager_participate = @s \
  wager_participate run scoreboard players enable @s wager_participate
execute as @a if score @s lives < lives active_wager run scoreboard \
  players reset @s wager_participate
execute as @a unless score lives active_wager = lives active_wager run \
  scoreboard players reset @s wager_participate
execute as @a[scores={wager=1..}] unless score lives active_wager matches 1.. \
  unless score @s wager > @s lives run function limited_lives:set_wager
execute as @a unless score @s wager_participate matches 0..1 if score @s \
  wager_participate = @s wager_participate run scoreboard players reset @s \
  wager_participate
execute as @a run advancement revoke @s from limited_lives:die_wager_player
execute as @a run advancement revoke @s from limited_lives:kill_wager_player
