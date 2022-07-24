# ACRACE start
## (if requirements met)


# remove tags
tag @a remove win

# announce
title @a title ["",{"text":"ACHIEVEMENT ","color":"green","bold":true},{"text":"RACE","color":"yellow","bold":true}]
title @a subtitle "Earn as many achievements as you can before the time limit."
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"The game has started!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~

# track score
scoreboard players set @a score 0
## set initial values
function acrace:load/values
## multipliers
execute if score multipliers global matches 1.. run function acrace:load/multipliers

# world
worldborder set 10000 5
gamemode survival @a[gamemode=!spectator]

# set period
scoreboard players set period internal 1