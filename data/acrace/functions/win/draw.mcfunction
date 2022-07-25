# ACRACE win
## in the event of a draw
## if allow_draw is enabled


scoreboard players set period internal 3
gamemode spectator @a[tag=!win]

# announce
title @a title {"text":"GAME OVER!","color":"gold","bold":true}
title @a subtitle ["",{"selector":"@a[tag=win]","color":"yellow","bold":true},{"text":" won in a draw!","color":"yellow"}]
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@a[tag=win]","color":"gold"},{"text":" won in a draw with ","color":"yellow"},{"score":{"name":"@a[tag=win,limit=1]","objective":"score"},"color":"gold"},{"text":" points!","color":"yellow"}]
# sfx
execute as @a at @s run playsound ui.toast.challenge_complete player @s ~ ~ ~

# fireworks
effect give @a resistance 9999 255 true
execute as @a[tag=win] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;16271635],FadeColors:[I;16095763]}]}}}}

# effects
effect give @a[tag=win] glowing 9999 255 true