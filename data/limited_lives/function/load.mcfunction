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

scoreboard objectives setdisplay sidebar lives
say Loaded limited_lives v0.1.0!