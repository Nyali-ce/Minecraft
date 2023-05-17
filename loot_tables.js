const fs = require('fs');

['diamond_sword', 'golden_sword', 'iron_sword', 'stone_sword', 'wooden_sword'].forEach(loot_table => {
    fs.writeFileSync(`./datapack/data/reforger/loot_tables/${loot_table}.json`,
        fs.readFileSync('./datapack/data/reforger/loot_tables/netherite_sword.json', 'utf8').replace(/"minecraft:netherite_sword"/g, `"minecraft:${loot_table}"`))
})