# ACRACE last-login checks


# -1, pre-start
execute if score period internal matches -1 as @a[gamemode=!adventure,gamemode=!survival,team=!admin] at @s run function acrace:warn_gamemode
execute if score period internal matches -1 run gamemode adventure @a[gamemode=!adventure,team=!admin]
execute if score period internal matches -1 run effect give @a weakness 9999 255 true
execute if score period internal matches -1 run effect give @a resistance 9999 255 true
execute if score period internal matches -1 run effect give @a regeneration 9999 255 true
execute if score period internal matches -1 run effect give @a saturation 9999 255 true
execute if score period internal matches -1 run scoreboard players set @a last_login -1
# 1, main game
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run gamemode survival @s[team=!admin,gamemode=!spectator]
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s weakness
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s resistance
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s regeneration
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s saturation
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run scoreboard players set @s last_login 1
# 3, victory
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run gamemode spectator @s[tag=!win,team=!admin]
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s weakness
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect give @s resistance 9999 255 true
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s regeneration
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s saturation
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run scoreboard players set @s last_login 3