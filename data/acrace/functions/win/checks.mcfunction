# ACRACE win checks


# store in temp
execute as @a run scoreboard players operation @s score.temp = @s score
scoreboard players set highest_score internal -1
# sort
execute as @a run scoreboard players operation highest_score internal > @s score.temp

# forward player
execute as @a if score @s score.temp = highest_score internal run tag @s add win
## only allow 1 player
tag @a[tag=win,sort=random,limit=1] add win_final
tag @a[tag=win,tag=!win_final] remove win
## final winner
execute as @a[tag=win,limit=1] run function acrace:win/go