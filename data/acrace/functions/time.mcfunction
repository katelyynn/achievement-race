# ACRACE time intervals


execute if score period internal matches 1 run function fm:clock

# bossbar
# [-1] pre-game
execute if score period internal matches -1 run bossbar set acrace:main name {"text":"The game will begin shortly!","color":"white"}
# [1] main
execute if score period internal matches 1 run bossbar set acrace:main name {"text":"Achievement Race BETA","color":"white"}
execute if score period internal matches 1 store result bossbar acrace:main value run scoreboard players get time_s internal
execute if score period internal matches 1 store result bossbar acrace:main max run scoreboard players get end_time global
# [3] win
execute if score period internal matches 3 run bossbar set acrace:main name {"text":"Game over!","color":"white"}