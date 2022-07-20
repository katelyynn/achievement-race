# ACRACE start


scoreboard players set can_start internal 0

# count up players
scoreboard players reset alive internal
execute as @a[gamemode=!spectator] run scoreboard players add alive internal 1

# check
execute if score alive internal matches 2.. run scoreboard players set can_start internal 1


# run
execute unless score can_start internal matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"X","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, atleast 2 people required for Achievement Race.","color":"red"}]
execute if score can_start internal matches 1.. run function acrace:start_c