# CUT CLEAN
## auto-smelts ores & food


# 1.17+ ores
## iron
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_iron"}}] at @s run data merge entity @s {Item:{id:"minecraft:iron_ingot"}}
## gold
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_gold"}}] at @s run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}
## copper
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_copper"}}] at @s run data merge entity @s {Item:{id:"minecraft:copper_ingot"}}

# 1.16- ores
## iron
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ore"}}] at @s run data merge entity @s {Item:{id:"minecraft:iron_ingot"}}
## gold
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ore"}}] at @s run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}

# food
## porkchop
execute as @e[type=item,nbt={Item:{id:"minecraft:porkchop"}}] at @s run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"}}
## mutton
execute as @e[type=item,nbt={Item:{id:"minecraft:mutton"}}] at @s run data merge entity @s {Item:{id:"minecraft:cooked_mutton"}}
## steak
execute as @e[type=item,nbt={Item:{id:"minecraft:beef"}}] at @s run data merge entity @s {Item:{id:"minecraft:cooked_beef"}}
## chicken
execute as @e[type=item,nbt={Item:{id:"minecraft:chicken"}}] at @s run data merge entity @s {Item:{id:"minecraft:cooked_chicken"}}
## rabbit
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit"}}] at @s run data merge entity @s {Item:{id:"minecraft:cooked_rabbit"}}
## cod
execute as @e[type=item,nbt={Item:{id:"minecraft:cod"}}] at @s run data merge entity @s {Item:{id:"minecraft:cooked_cod"}}
## salmon
execute as @e[type=item,nbt={Item:{id:"minecraft:salmon"}}] at @s run data merge entity @s {Item:{id:"minecraft:cooked_salmon"}}