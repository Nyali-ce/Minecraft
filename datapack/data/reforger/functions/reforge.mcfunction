# ok so I find it easier to write it in generic code first and then translate it to mcfunction
#
# const itemFrames:[] = item frames with falling anvil over them
#
# const lootTables:[] = customModelData loot tables
#
# for const itemFrame of itemFrames:
#   let valid:bool = false
#   for const lootTable of lootTables:
#       if(itemFrame.Item.name == lootTable.name):
#        valid = true
#        break
#   if(!valid):
#       itemFrames.remove(itemFrame)
#
# const newItemFrames:[] = itemFrames.filter(itemFrame => !itemFrame.tagged("saved")
# 
# for const itemFrame of newItemFrames:
#   scoreboard players set #min rng 0
#   scoreboard players set #max rng 100000  
#   function random:rng
#
#   summon marker at itemFrame
#   marker.tag("${#value rng}")
#   itemFrame.tag("${#value rng}")
#   marker.Item = itemFrame.Item
#   itemFrame.tag("saved")
#
# for const itemFrame of itemFrames:
#   itemFrame.Item = loot lootTables[itemFrame.Item.name]
#   