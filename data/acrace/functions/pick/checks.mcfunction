# ACRACE achievement checks
# check if user has earned achivement


#> TODO: add all vanilla & modded? achievements


## generate.html
## typing this by hand would be awful:

execute if score achievement internal matches 0 if entity @a[advancements={minecraft:story/obtain_armor=true}] as @a[advancements={minecraft:story/obtain_armor=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 1 if entity @a[advancements={minecraft:story/lava_bucket=true}] as @a[advancements={minecraft:story/lava_bucket=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 2 if entity @a[advancements={minecraft:story/iron_tools=true}] as @a[advancements={minecraft:story/iron_tools=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 3 if entity @a[advancements={minecraft:story/deflect_arrow=true}] as @a[advancements={minecraft:story/deflect_arrow=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 4 if entity @a[advancements={minecraft:story/form_obsidian=true}] as @a[advancements={minecraft:story/form_obsidian=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 5 if entity @a[advancements={minecraft:story/mine_diamond=true}] as @a[advancements={minecraft:story/mine_diamond=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 6 if entity @a[advancements={minecraft:story/enter_the_nether=true}] as @a[advancements={minecraft:story/enter_the_nether=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 7 if entity @a[advancements={minecraft:story/shiny_gear=true}] as @a[advancements={minecraft:story/shiny_gear=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 8 if entity @a[advancements={minecraft:story/enchant_item=true}] as @a[advancements={minecraft:story/enchant_item=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 9 if entity @a[advancements={minecraft:nether/return_to_sender=true}] as @a[advancements={minecraft:nether/return_to_sender=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 10 if entity @a[advancements={minecraft:nether/find_bastion=true}] as @a[advancements={minecraft:nether/find_bastion=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 11 if entity @a[advancements={minecraft:nether/find_fortress=true}] as @a[advancements={minecraft:nether/find_fortress=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 12 if entity @a[advancements={minecraft:nether/obtain_crying_obsidian=true}] as @a[advancements={minecraft:nether/obtain_crying_obsidian=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 13 if entity @a[advancements={minecraft:nether/distract_piglin=true}] as @a[advancements={minecraft:nether/distract_piglin=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 14 if entity @a[advancements={minecraft:nether/obtain_blaze_rod=true}] as @a[advancements={minecraft:nether/obtain_blaze_rod=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 15 if entity @a[advancements={minecraft:adventure/spyglass_at_parrot=true}] as @a[advancements={minecraft:adventure/spyglass_at_parrot=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 16 if entity @a[advancements={minecraft:adventure/kill_a_mob=true}] as @a[advancements={minecraft:adventure/kill_a_mob=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 17 if entity @a[advancements={minecraft:adventure/trade=true}] as @a[advancements={minecraft:adventure/trade=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 18 if entity @a[advancements={minecraft:adventure/ol_betsy=true}] as @a[advancements={minecraft:adventure/ol_betsy=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 19 if entity @a[advancements={minecraft:adventure/sleep_in_bed=true}] as @a[advancements={minecraft:adventure/sleep_in_bed=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 20 if entity @a[advancements={minecraft:adventure/throw_trident=true}] as @a[advancements={minecraft:adventure/throw_trident=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 21 if entity @a[advancements={minecraft:adventure/shoot_arrow=true}] as @a[advancements={minecraft:adventure/shoot_arrow=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 22 if entity @a[advancements={minecraft:adventure/totem_of_undying=true}] as @a[advancements={minecraft:adventure/totem_of_undying=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 23 if entity @a[advancements={minecraft:adventure/summon_iron_golem=true}] as @a[advancements={minecraft:adventure/summon_iron_golem=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 24 if entity @a[advancements={minecraft:husbandry/safely_harvest_honey=true}] as @a[advancements={minecraft:husbandry/safely_harvest_honey=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 25 if entity @a[advancements={minecraft:husbandry/breed_an_animal=true}] as @a[advancements={minecraft:husbandry/breed_an_animal=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 26 if entity @a[advancements={minecraft:husbandry/tame_an_animal=true}] as @a[advancements={minecraft:husbandry/tame_an_animal=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 27 if entity @a[advancements={minecraft:husbandry/make_a_sign_glow=true}] as @a[advancements={minecraft:husbandry/make_a_sign_glow=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 28 if entity @a[advancements={minecraft:husbandry/fishy_business=true}] as @a[advancements={minecraft:husbandry/fishy_business=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 29 if entity @a[advancements={minecraft:husbandry/plant_seed=true}] as @a[advancements={minecraft:husbandry/plant_seed=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 30 if entity @a[advancements={minecraft:husbandry/tactical_fishing=true}] as @a[advancements={minecraft:husbandry/tactical_fishing=true},limit=1,sort=random] at @s run function achunt:pick/take
execute if score achievement internal matches 31 if entity @a[advancements={minecraft:husbandry/axolotl_in_a_bucket=true}] as @a[advancements={minecraft:husbandry/axolotl_in_a_bucket=true},limit=1,sort=random] at @s run function achunt:pick/take