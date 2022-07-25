# ACRACE win checks


# store in temp
execute as @a run scoreboard players operation @s score.temp = @s score
scoreboard players set highest_score internal -1
# sort
execute as @a run scoreboard players operation highest_score internal > @s score.temp

# forward player
execute as @a if score @s score.temp = highest_score internal run tag @s add win
## count
scoreboard players set winners internal 0
execute as @a[tag=win] run scoreboard players add winners internal 1
## draw
execute if score allow_draw global matches 1.. if score winners internal matches 2.. run function acrace:win/draw
## no draw
execute unless score winners internal matches 2.. run function acrace:win/go

# if drawing is disabled
## only allow 1 player
execute unless score allow_draw global matches 1.. if score winners internal matches 2.. run tag @a[tag=win,sort=random,limit=1] add win_final
execute unless score allow_draw global matches 1.. if score winners internal matches 2.. run tag @a[tag=win,tag=!win_final] remove win
## final winner
execute unless score allow_draw global matches 1.. if score winners internal matches 2.. run function acrace:win/go