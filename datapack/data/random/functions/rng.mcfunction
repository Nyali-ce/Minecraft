# reset old rng 
scoreboard players set #value rng 0

# create random marker
summon marker 0 0 0 {Tags: ["RNGMarker"]}
spreadplayers 7 7 0 7 false @e[tag=RNGMarker]


# get random number (-117,649 to 117,649)
scoreboard players set #7 rng 7
execute store result score #temp rng run data get entity @e[limit=1,sort=random,tag=RNGMarker] Pos[0]
scoreboard players operation #temp rng -= #7 rng
scoreboard players operation #value rng += #temp rng
scoreboard players operation #value rng *= #7 rng
execute store result score #temp rng run data get entity @e[limit=1,sort=random,tag=RNGMarker] Pos[2]
scoreboard players operation #temp rng -= #7 rng
scoreboard players operation #value rng += #temp rng
scoreboard players operation #value rng *= #7 rng
tp @e[tag=RNGMarker] 0 0 0
spreadplayers 0 0 0 7 false @e[tag=RNGMarker]
execute store result score #temp rng run data get entity @e[limit=1,sort=random,tag=RNGMarker] Pos[0]
scoreboard players operation #temp rng -= #7 rng
scoreboard players operation #value rng += #temp rng
scoreboard players operation #value rng *= #7 rng
execute store result score #temp rng run data get entity @e[limit=1,sort=random,tag=RNGMarker] Pos[2]
scoreboard players operation #temp rng -= #7 rng
scoreboard players operation #value rng += #temp rng
scoreboard players operation #value rng *= #7 rng
tp @e[tag=RNGMarker] 0 0 0
spreadplayers 0 0 0 7 false @e[tag=RNGMarker]
execute store result score #temp rng run data get entity @e[limit=1,sort=random,tag=RNGMarker] Pos[0]
scoreboard players operation #temp rng -= #7 rng
scoreboard players operation #value rng += #temp rng
scoreboard players operation #value rng *= #7 rng
execute store result score #temp rng run data get entity @e[limit=1,sort=random,tag=RNGMarker] Pos[2]
scoreboard players operation #temp rng -= #7 rng
scoreboard players operation #value rng += #temp rng
scoreboard players reset #7 rng

# hashing????
scoreboard players set #2**5 rng 32
scoreboard players operation #value rng *= #2**5 rng
scoreboard players reset #2**5 rng
scoreboard players set #5 rng 5
scoreboard players operation #value rng /= #5 rng

# get difference (max - min + 1)
scoreboard players operation #diff rng = #max rng
scoreboard players operation #diff rng -= #min rng
scoreboard players set #1 rng 1
scoreboard players operation #diff rng += #1 rng
scoreboard players reset #1

# get random number based on min max
scoreboard players operation #value rng %= #diff rng
scoreboard players operation #value rng += #min rng

kill @e[tag=RNGMarker]