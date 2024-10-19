scoreboard players operation @s lives -= lives active_wager
# Offset since they lose an additional 1 for just dying
scoreboard players operation @s lives += 1 const
tag @s add wager_done
