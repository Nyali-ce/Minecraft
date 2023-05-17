const fs = require('fs');

const netherite = fs.readFileSync('./datapack/data/reforger/loot_tables/netherite_sword.json', 'utf8')

fs.writeFileSync('./datapack/data/reforger/loot_tables/diamond_sword.json', netherite.replace(/"minecraft:netherite_sword"/g, '"minecraft:diamond_sword"'))
fs.writeFileSync('./datapack/data/reforger/loot_tables/golden_sword.json', netherite.replace(/"minecraft:netherite_sword"/g, '"minecraft:golden_sword"'))
fs.writeFileSync('./datapack/data/reforger/loot_tables/iron_sword.json', netherite.replace(/"minecraft:netherite_sword"/g, '"minecraft:iron_sword"'))
fs.writeFileSync('./datapack/data/reforger/loot_tables/stone_sword.json', netherite.replace(/"minecraft:netherite_sword"/g, '"minecraft:stone_sword"'))
fs.writeFileSync('./datapack/data/reforger/loot_tables/wooden_sword.json', netherite.replace(/"minecraft:netherite_sword"/g, '"minecraft:wooden_sword"'))