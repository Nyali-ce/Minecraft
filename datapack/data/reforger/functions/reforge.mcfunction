execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b},tag=!saved] at @s run summon marker ~ ~ ~
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b},tag=!saved] at @s run tag @e[type=marker,limit=1,sort=nearest,tag=!used] add reforge
tag @e[type=marker,tag=reforge] add used
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b},tag=!saved] at @s run data modify entity @e[type=marker,limit=1,tag=reforge,sort=nearest] data.Item.tag set from entity @s Item.tag
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b},tag=!saved] run tag @s add saved

execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:wooden_sword"}},tag=saved] if block ~ ~-1 ~ smithing_table unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:stone_sword"}},tag=saved] if block ~ ~-1 ~ smithing_table unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:iron_sword"}},tag=saved] if block ~ ~-1 ~ smithing_table unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:golden_sword"}},tag=saved] if block ~ ~-1 ~ smithing_table unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:diamond_sword"}},tag=saved] if block ~ ~-1 ~ lodestone unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:netherite_sword"}},tag=saved] if block ~ ~-1 ~ lodestone unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}

execute as @e[type=item_frame,nbt={Item: {id: "minecraft:wooden_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:wooden_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:stone_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:stone_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:iron_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:iron_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:golden_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:golden_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:diamond_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:diamond_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:netherite_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:netherite_sword

execute as @e[type=item_frame,nbt={Item: {tag: {reforged: 0b}}}] at @s run data modify entity @s Item.tag merge from entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=reforge,distance=..1] data.Item.tag

execute at @e[type=item_frame,nbt={Item: {id: "minecraft:wooden_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ mangrove_planks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:stone_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ mangrove_planks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:iron_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ mangrove_planks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:golden_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ mangrove_planks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:diamond_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ chiseled_stone_bricks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:netherite_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ chiseled_stone_bricks

execute as @e[type=item_frame,nbt={Item: {tag: {reforged: 0b}}}] run data modify entity @s Item.tag merge value {reforged: 1b}

execute as @e[type=minecraft:marker,tag=reforge] unless entity @e[type=minecraft:item_frame,limit=1,distance=..1,sort=nearest,nbt={Facing: 1b},tag=saved] run kill @s

schedule function reforger:reforge 1t