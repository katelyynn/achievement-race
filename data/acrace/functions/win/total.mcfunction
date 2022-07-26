# ACRACE win total
## displays total points earned


# calculate
scoreboard players set total_earned internal 0
execute as @a run scoreboard players operation total_earned internal += @s score
# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"⭐","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"A total of ","color":"yellow"},{"score":{"name":"total_earned","objective":"internal"},"color":"gold"},{"text":" points were earned!","color":"yellow"}]