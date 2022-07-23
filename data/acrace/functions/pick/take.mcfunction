# ACRACE achievement take
## when a user earns a achievement
## ran as user


# range check
execute unless score @s achievement.claiming_points matches 1.. run scoreboard players set @s achievement.claiming_points 5

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"+","color":"green","bold":true},{"score":{"name":"@s","objective":"achievement.claiming_points"},"color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gold"},{"text":" earned an achievement!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s
# score
scoreboard players operation @s score += @s achievement.claiming_points