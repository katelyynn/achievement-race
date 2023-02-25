# ACRACE setup
## dynamically generated


# tellraw
## header
tellraw @s ["",{"text":"\nACHIEVEMENT ","color":"green","bold":true},{"text":"RACE\n","color":"yellow","bold":true}]
## intro
tellraw @s ["",{"text":"Before the game begins, check your options and invite everyone to the game. Hover over titles for more information.\n"}]
## options
tellraw @s ["",{"text":"Options:","color":"yellow"}]

# load page
scoreboard players add @s setup.page 0
execute if score @s setup.page matches 0 run function acrace:setup/page/0
execute if score @s setup.page matches 1 run function acrace:setup/page/1
## display
scoreboard players operation @s setup.page_display = @s setup.page
scoreboard players add @s setup.page_display 1

## page actions
tellraw @s ["",{"text":"\n[","color":"white"},{"text":"←","color":"gray","clickEvent":{"action":"run_command","value":"/function acrace:setup/down"}},{"text":"] \u0020 \u0020","color":"white"},"Page ",{"score":{"name":"@s","objective":"setup.page_display"}}," of 2",{"text":"\u0020 \u0020 [","color":"white"},{"text":"→","color":"gray","clickEvent":{"action":"run_command","value":"/function acrace:setup/up"}},{"text":"]","color":"white"}]

## footer
tellraw @s ["",{"text":"\nOnce you're ready, run "},{"text":"/function acrace:start","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function acrace:start"}},{"text":" and let the games begin!\n"}]


scoreboard players set setup internal 1