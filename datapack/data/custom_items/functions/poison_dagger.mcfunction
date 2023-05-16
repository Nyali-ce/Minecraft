scoreboard players add @e poison_dagger 0
execute at @a[nbt={SelectedItem: {id: "minecraft:netherite_sword", tag: {CustomModelData: 4202}}},scores={damage_dealt=1..}] as @e[nbt={HurtTime: 10s},distance=..8] run tag @s add poison_dagger
execute at @a[nbt={SelectedItem: {id: "minecraft:netherite_sword", tag: {CustomModelData: 4202}}},scores={damage_dealt=1..}] as @e[nbt={HurtTime: 10s},distance=..8] run effect give @s poison 10 2 true
execute at @a[nbt={SelectedItem: {id: "minecraft:netherite_sword", tag: {CustomModelData: 4202}}},scores={damage_dealt=1..}] as @e[nbt={HurtTime: 10s},distance=..8] run scoreboard players set @s poison_dagger 200
execute as @e[tag=poison_dagger] run scoreboard players remove @s poison_dagger 1
execute as @e[tag=poison_dagger,scores={poison_dagger=0}] run tag @s remove poison_dagger