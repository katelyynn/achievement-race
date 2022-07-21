# ACRACE win checks


# store in temp
execute as @a run scoreboard players operation @s score.temp = @s score
scoreboard players set highest_score internal -1
# sort
execute as @a run scoreboard players operation highest_score internal > @s score.temp

# forward player
execute as @a if score @s score.temp = highest_score internal run tag @s add win
execute as @a at @s if score @s score.temp = highest_score internal run function acrace:win/go