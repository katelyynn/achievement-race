# ACRACE achievement take
## when a user earns a achievement
## ran as user


# points to be claimed
## should be set via pick/checks, if not set to base value 1
execute unless score @s achievement.claiming_points matches 1.. run scoreboard players set @s achievement.claiming_points 1

# announce
## if hiding
execute if score hide_point_gain global matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"+","color":"green","bold":true},{"score":{"name":"@s","objective":"achievement.claiming_points"},"color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gold"},{"text":" earned an achievement!","color":"yellow"}]
execute if score hide_point_gain global matches 1.. run tellraw @a[distance=1.5..] ["",{"text":"[","color":"dark_gray"},{"text":"+??","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gold"},{"text":" earned an achievement!","color":"yellow"}]
## if not hiding
### normal
execute unless score hide_point_gain global matches 1.. unless entity @s[tag=claimed_multiply] run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"+","color":"green","bold":true},{"score":{"name":"@s","objective":"achievement.claiming_points"},"color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gold"},{"text":" earned an achievement!","color":"yellow"}]
### multiplied
execute unless score hide_point_gain global matches 1.. if entity @s[tag=claimed_multiply] run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"+","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"achievement.claiming_points"},"color":"light_purple","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gold"},{"text":" earned an achievement!","color":"yellow"}]

# sfx
## for @s only, not global
playsound entity.arrow.hit_player player @s

# score
scoreboard players operation @s score += @s achievement.claiming_points

# is multiplied
## 'claimed_multiply' tag given if achievement was multiplied
## uses 'multiplier' score for 'x2 multiplied'
execute unless score hide_point_gain global matches 1.. if entity @s[tag=claimed_multiply] run playsound minecraft:block.brewing_stand.brew player @s
execute unless score hide_point_gain global matches 1.. if entity @s[tag=claimed_multiply] run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⭐","color":"light_purple"},{"text":"] ","color":"dark_gray"},{"text":"You earned a ","color":"yellow"},{"text":"x","color":"light_purple"},{"score":{"name":"multiplier","objective":"global"},"color":"light_purple"},{"text":" multiplied","color":"light_purple"},{"text":" achievement!","color":"yellow"}]
# remove tag
tag @s remove claimed_multiply