# ACRACE main loop


# period checks
function acrace:last_login

# setup
execute as @a unless score setup internal matches 1.. run function acrace:setup/go
execute if score period internal matches -1 run title @a actionbar ["",{"text":"Configure the game using ","color":"yellow"},{"text":"/trigger setup","color":"gold"},{"text":" before the games begin!","color":"yellow"}]
## /trigger setup
scoreboard players enable @a setup
execute if score period internal matches -1 as @a if score @s setup matches 1.. run function acrace:setup/go
execute unless score period internal matches -1 as @a if score @s setup matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"X","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Setup flow can only be opened before the game has started.","color":"red"}]
execute as @a if score @s setup matches 1.. run scoreboard players reset @s setup
## validate
function acrace:setup/validate

# world
bossbar set acrace:main players @a
execute store result bossbar acrace:main max run scoreboard players get end_time global
## show score
execute if score show_scoreboard global matches 1.. run scoreboard objectives setdisplay sidebar score
execute unless score show_scoreboard global matches 1.. run scoreboard objectives setdisplay sidebar
## show on actionbar
execute if score show_score_actionbar global matches 1.. as @a run title @s actionbar ["",{"text":"[","color":"dark_gray"},{"text":"⭐","color":"green"},{"text":"] ","color":"dark_gray"},{"score":{"name":"@s","objective":"score"}}]

# time loop
function acrace:time

# achievement checks
execute if score period internal matches 1 run function acrace:pick/checks

# options
execute if score cut_clean global matches 1.. run function acrace:extras/cut_clean
execute if score speed_uhc global matches 1.. run function acrace:extras/speed_uhc
execute if score speed_uhc global matches 1.. run function acrace:extras/grindstone

# trigger to display multipliers
## /trigger multipliers
scoreboard players enable @a multipliers
execute as @a at @s if score @s multipliers matches 1.. run function acrace:load/multipliers_show
execute as @a at @s if score @s multipliers matches 1.. run scoreboard players reset @s multipliers

# detect when achievement is fully claimed
execute if score period internal matches 1 run function acrace:taken/checks

# win checks
execute if score period internal matches 1 if score time_s internal >= end_time global run function acrace:win/checks

# range check for points
execute as @a unless score @s score matches 0.. run scoreboard players set @s score 0