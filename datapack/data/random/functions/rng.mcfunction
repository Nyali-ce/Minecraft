kill @e[tag=RNGMarker]
summon marker 0 0 0 {Tags: ["RNGMarker"]}
spreadplayers 0 0 0 100 false @e[tag=RNGMarker]
execute store result score #value rng run data get entity @e[limit=1,sort=random,tag=RNGMarker] Pos[0]