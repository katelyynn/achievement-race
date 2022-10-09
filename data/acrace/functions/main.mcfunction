# ACRACE main loop


# period checks
function acrace:last_login

# setup
execute as @a unless score setup internal matches 1.. run function acrace:setup/go
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

# win checks
execute if score period internal matches 1 if score time_s internal >= end_time global run function acrace:win/checks

# range check for points
execute as @a unless score @s score matches 0.. run scoreboard players set @s score 0