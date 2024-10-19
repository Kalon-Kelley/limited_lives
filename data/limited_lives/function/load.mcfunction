scoreboard objectives add lives dummy "Lives"
scoreboard objectives add revived dummy
scoreboard objectives add died deathCount
scoreboard objectives add drank_potion minecraft.used:minecraft.potion
scoreboard objectives add potion_brew_state dummy
scoreboard objectives add wager trigger
scoreboard objectives add wager_participate trigger
scoreboard objectives add active_wager dummy "Active Wager"

# Set constants for scoreboard operations
scoreboard objectives add const dummy
scoreboard players set 1 const 1

scoreboard objectives setdisplay sidebar active_wager
say Loaded limited_lives v0.2.3!
