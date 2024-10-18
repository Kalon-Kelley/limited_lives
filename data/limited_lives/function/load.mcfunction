scoreboard objectives add lives dummy "Lives"
scoreboard objectives add revived dummy
scoreboard objectives add died deathCount
scoreboard objectives add drank_potion minecraft.used:minecraft.potion
scoreboard objectives add holding_life_potion dummy
scoreboard objectives add holding_revive_potion dummy
scoreboard objectives add held_life_potion dummy
scoreboard objectives add held_revive_potion dummy
scoreboard objectives add drank_life_potion dummy
scoreboard objectives add drank_revive_potion dummy
scoreboard objectives add potion_brew_state dummy
scoreboard objectives add wager trigger
scoreboard objectives add wager_participate trigger
scoreboard objectives add active_wager dummy "Active Wager"

scoreboard objectives setdisplay sidebar active_wager
say Loaded limited_lives v0.2.2!
