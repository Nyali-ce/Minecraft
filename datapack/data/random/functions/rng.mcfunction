# reset old rng 
scoreboard players set #value rng 0

# get random number
scoreboard players set #10 rng 10
execute store result score #value rng run loot spawn ~ ~ ~ loot random:rng
scoreboard players operation #value rng *= #10 rng
execute store result score #temp rng run loot spawn ~ ~ ~ loot random:rng
scoreboard players operation #value rng += #temp rng
scoreboard players operation #value rng *= #10 rng
execute store result score #temp rng run loot spawn ~ ~ ~ loot random:rng
scoreboard players operation #value rng += #temp rng
scoreboard players operation #value rng *= #10 rng
execute store result score #temp rng run loot spawn ~ ~ ~ loot random:rng
scoreboard players operation #value rng += #temp rng
scoreboard players operation #value rng *= #10 rng
execute store result score #temp rng run loot spawn ~ ~ ~ loot random:rng
scoreboard players operation #value rng += #temp rng
scoreboard players operation #value rng *= #10 rng
execute store result score #temp rng run loot spawn ~ ~ ~ loot random:rng
scoreboard players operation #value rng += #temp rng

# get difference (max - min + 1)
scoreboard players operation #diff rng = #max rng
scoreboard players operation #diff rng -= #min rng
scoreboard players set #1 rng 1
scoreboard players operation #diff rng += #1 rng
scoreboard players reset #1

# get random number based on min max
scoreboard players operation #value rng %= #diff rng
scoreboard players operation #value rng += #min rng