# ACRACE main loop


# world
bossbar set acrace:main players @a

# time loop
function acrace:time

# achievement checks
execute if score period internal matches 1 run function acrace:pick/checks

# options
execute if score cut_clean global matches 1.. run function acrace:extras/cut_clean
execute if score speed_uhc global matches 1.. run function acrace:extras/speed_uhc
execute if score speed_uhc global matches 1.. run function acrace:extras/grindstone

# win checks
execute if score period internal matches 1 if score time_s internal >= end_time global run function acrace:win/checks

# range check for points
execute as @a unless score @s score matches 0.. run scoreboard players set @s score 0

# period checks
function acrace:last_login