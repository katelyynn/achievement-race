# ACRACE achievement take
## when a user earns a achievement
## ran as user


# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"+10","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gold"},{"text":" earned an achievement!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s
# score
scoreboard players operation @s score += score_increase global