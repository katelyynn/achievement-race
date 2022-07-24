# ACRACE setup
## dynamically generated


# tellraw
## header
tellraw @s ["",{"text":"\nACHIEVEMENT ","color":"green","bold":true},{"text":"RACE\n","color":"yellow","bold":true}]
## intro
tellraw @s ["",{"text":"Before the game begins, check your options and invite everyone to the game.\n"}]
## options
tellraw @s ["",{"text":"Options:","color":"yellow"}]

# multiplier
## enabled
execute if score multiplier global matches 1.. run tellraw @s ["",{"text":"x2 Multiplier \u0020 \u0020"},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/multiplier/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score multiplier global matches 1.. run tellraw @s ["",{"text":"x2 Multiplier \u0020 \u0020"},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/multiplier/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# end time
tellraw @s ["",{"text":"End time \u0020 \u0020"},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/end_time/down"}},{"text":"  ","color":"white"},{"score":{"name":"end_time","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/end_time/up"}},{"text":" ","color":"dark_gray"}]

# cut clean
## enabled
execute if score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020"},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/cut_clean/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020"},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/cut_clean/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# speed uhc
## enabled
execute if score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020"},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/speed_uhc/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020"},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/speed_uhc/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

## footer
tellraw @s ["",{"text":"\nOnce you're ready, run "},{"text":"/function acrace:start","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function acrace:start"}},{"text":" and let the games begin!\n"}]


scoreboard players set setup internal 1