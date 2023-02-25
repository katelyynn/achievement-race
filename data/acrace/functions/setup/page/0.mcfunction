# ACRACE setup
## page 0


# allow draw
## enabled
execute if score allow_draw global matches 1.. run tellraw @s ["",{"text":"Allow winning draw \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"In the event of more than one winner, end in a draw rather than randomly picking."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/allow_draw/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score allow_draw global matches 1.. run tellraw @s ["",{"text":"Allow winning draw \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"In the event of more than one winner, end in a draw rather than randomly picking."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/allow_draw/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# lock achievements
## enabled
execute if score lock_achievements global matches 1.. run tellraw @s ["",{"text":"Lock achievements \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Lock achievement after the first claim."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/lock_achievements/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score lock_achievements global matches 1.. run tellraw @s ["",{"text":"Lock achievements \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Lock achievement after the first claim."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/lock_achievements/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# multiplier
## enabled
execute if score multiplier global matches 1.. run tellraw @s ["",{"text":"x2 Multiplier \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Doubles the points on 6 random achievements."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/multiplier/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score multiplier global matches 1.. run tellraw @s ["",{"text":"x2 Multiplier \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Doubles the points on 6 random achievements."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/multiplier/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# multiplied achievement count
tellraw @s ["",{"text":"Multiplied achievement count \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"The amount of achievements to be multiplied."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/multiplied_achievements/down"}},{"text":"  ","color":"white"},{"score":{"name":"multiplied_achievements","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/multiplied_achievements/up"}},{"text":" ","color":"dark_gray"}]

# end time
tellraw @s ["",{"text":"End time \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"The time limit of the game, in seconds."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/end_time/down"}},{"text":"  ","color":"white"},{"score":{"name":"end_time","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function acrace:setup/end_time/up"}},{"text":" ","color":"dark_gray"}]