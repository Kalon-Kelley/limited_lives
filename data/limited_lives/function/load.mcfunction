scoreboard objectives add lives dummy "Lives"
scoreboard objectives add revived dummy
scoreboard objectives add died deathCount
scoreboard objectives add drank_potion minecraft.used:minecraft.potion
scoreboard objectives add potion_brew_state dummy
scoreboard objectives add wager trigger
scoreboard objectives add wager_participate trigger
scoreboard objectives add active_wager dummy "Active Wager"

# setup for display players
team add divider
team modify divider color yellow
team join divider -----Participants-----

# Set constants for scoreboard operations
scoreboard objectives add const dummy
scoreboard players set 1 const 1

# Setdisplay
scoreboard objectives setdisplay list lives

say Loaded limited_lives v0.3.0 for minecraft 1.21.5!
