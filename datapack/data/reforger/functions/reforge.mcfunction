# at falling anvil ~ ~-1 ~ as and at unsaved item frame
# summon marker with reforge tag
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b},tag=!saved] at @s run summon marker ~ ~ ~ {Tags: ["reforge", "used"]}

# saved item data to closest marker
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b},tag=!saved] at @s run data modify entity @e[type=marker,limit=1,tag=reforge,sort=nearest] data.Item.tag set from entity @s Item.tag

# add saved tag
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b},tag=!saved] run tag @s add saved

# check if right block below and not already reforged, then set reforged tag to 0 (in preparation for reforge)
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:wooden_sword"}},tag=saved] if block ~ ~-1 ~ minecraft:smithing_table unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:stone_sword"}},tag=saved] if block ~ ~-1 ~ minecraft:smithing_table unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:iron_sword"}},tag=saved] if block ~ ~-1 ~ minecraft:smithing_table unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:golden_sword"}},tag=saved] if block ~ ~-1 ~ minecraft:smithing_table unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:diamond_sword"}},tag=saved] if block ~ ~-1 ~ minecraft:lodestone unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}
execute at @e[type=minecraft:falling_block,nbt={BlockState: {Name: "minecraft:anvil"}}] positioned ~ ~-1 ~ as @e[type=item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b, Item: {id: "minecraft:netherite_sword"}},tag=saved] if block ~ ~-1 ~ minecraft:lodestone unless entity @s[nbt={Item: {tag: {reforged: 1b}}}] run data modify entity @s Item.tag merge value {reforged: 0b}

# as item frame with reforged tag at 0 (in preparation for reforge) randomly replace with a reforge item
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:wooden_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:wooden_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:stone_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:stone_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:iron_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:iron_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:golden_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:golden_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:diamond_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:diamond_sword
execute as @e[type=item_frame,nbt={Item: {id: "minecraft:netherite_sword", tag: {reforged: 0b}}}] run loot replace entity @s container.0 loot reforger:netherite_sword

# merge marker item data with item frame item data
execute as @e[type=item_frame,nbt={Item: {tag: {reforged: 0b}}}] at @s run data modify entity @s Item.tag merge from entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=reforge,distance=..2] data.Item.tag

# replace block below (reforge cost)
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:wooden_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ mangrove_planks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:stone_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ mangrove_planks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:iron_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ mangrove_planks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:golden_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ mangrove_planks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:diamond_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ chiseled_stone_bricks
execute at @e[type=item_frame,nbt={Item: {id: "minecraft:netherite_sword", tag: {reforged: 0b}}}] run setblock ~ ~-1 ~ chiseled_stone_bricks

# set reforged tag to 1 (reforge complete)
execute as @e[type=item_frame,nbt={Item: {tag: {reforged: 0b}}}] run data modify entity @s Item.tag merge value {reforged: 1b}

# kill marker
execute as @e[type=minecraft:marker,tag=reforge] unless entity @e[type=minecraft:item_frame,limit=1,distance=..2,sort=nearest,nbt={Facing: 1b},tag=saved] run kill @s

# execute every game tick
schedule function reforger:reforge 1t