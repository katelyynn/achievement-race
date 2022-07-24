# ACRACE setup
## dynamically generated


# tellraw
## header
tellraw @s ["",{"text":"\nACHIEVEMENT ","color":"green","bold":true},{"text":"RACE\n","color":"yellow","bold":true}]
## intro
tellraw @s ["",{"text":"Before the game begins, check your options and invite everyone to the\ngame. Hover over titles for more information.\n"}]
## options
tellraw @s ["",{"text":"Options:","color":"yellow"}]

# multiplier
## enabled
execute if score multiplier global matches 1.. run tellraw @s ["",{"text":"x2 Multiplier \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Doubles the points on 6 random achievements."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/multiplier/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score multiplier global matches 1.. run tellraw @s ["",{"text":"x2 Multiplier \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Doubles the points on 6 random achievements."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/multiplier/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# end time
tellraw @s ["",{"text":"End time \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"The time limit of the game, in seconds."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/end_time/down"}},{"text":"  ","color":"white"},{"score":{"name":"end_time","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/end_time/up"}},{"text":" ","color":"dark_gray"}]

# hide point gain
## enabled
execute if score hide_point_gain global matches 1.. run tellraw @s ["",{"text":"Hide point gain \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Display +?? (instead of eg. +5) upon earning an achievement to other players."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/hide_point_gain/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score hide_point_gain global matches 1.. run tellraw @s ["",{"text":"Hide point gain \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Display +?? (instead of eg. +5) upon earning an achievement to other players."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/hide_point_gain/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# show scoreboard
## enabled
execute if score show_scoreboard global matches 1.. run tellraw @s ["",{"text":"Show scoreboard \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Displays the point scoreboard."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/show_scoreboard/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score show_scoreboard global matches 1.. run tellraw @s ["",{"text":"Show scoreboard \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Displays the point scoreboard."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/show_scoreboard/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# show score on actionbar
## enabled
execute if score show_score_actionbar global matches 1.. run tellraw @s ["",{"text":"Show score on actionbar \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Displays your current points on your actionbar."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/show_score_actionbar/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score show_score_actionbar global matches 1.. run tellraw @s ["",{"text":"Show score on actionbar \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Displays your current points on your actionbar."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/show_score_actionbar/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# cut clean
## enabled
execute if score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically smelts ores and cooks food."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/cut_clean/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically smelts ores and cooks food."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/cut_clean/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# speed uhc
## enabled
execute if score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically enchants tools with efficiency."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/speed_uhc/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically enchants tools with efficiency."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/speed_uhc/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

## footer
tellraw @s ["",{"text":"\nOnce you're ready, run "},{"text":"/function acrace:start","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function acrace:start"}},{"text":" and let the games begin!\n"}]


scoreboard players set setup internal 1