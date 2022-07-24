# ACRACE show multipliers


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⭐","color":"light_purple"},{"text":"] ","color":"dark_gray"},{"text":"The following achievements have been ","color":"yellow"},{"text":"x2 multiplied","color":"light_purple"},{"text":":","color":"yellow"},{"text":"\n- ","color":"gold"},{"selector":"@e[tag=achievement,tag=multiplied]","separator":"\n- ","color":"gold"},{"text":"\nView multiplied achievements with ","color":"yellow"},{"text":"/trigger multipliers","color":"light_purple"}]
# sfx
playsound minecraft:block.brewing_stand.brew player @s