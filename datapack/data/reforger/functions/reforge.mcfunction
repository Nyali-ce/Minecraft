# ok so I find it easier to write it in generic code first and then translate it to mcfunction
#
# const itemFrames:[] = item frames with falling anvil over them
# const lootTables:[] = customModelData loot tables
# const markers:[] = markers tagged "reforge"
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
#   summon marker at itemFrame
#   marker.tag("reforge")
#   marker.tag("${itemFrame.UUID[0]}")
#   marker.Item = itemFrame.Item
#   markers.push(marker)
#   itemFrame.tag("saved")
#
# for const itemFrame of itemFrames:
#   itemFrame.Item = loot lootTables[itemFrame.Item.name]
#   itemFrame.Item.Enchantments.clone(markers[tag=${itemFrame.tag}].Item.Enchantments)
#   itemFrame.Item.RepairCost = markers[tag=${itemFrame.tag}].Item.RepairCost
#   itemFrame.Item.Damage = markers[tag=${itemFrame.tag}].Item.Damage
#   itemFrame.Item.Display = markers[tag=${itemFrame.tag}].Item.Display
#
# for const marker of markers:
#   if(itemFrames.filter(itemFrame => itemFrame.UUID[0] == marker.tag).length == 0):
#       kill marker   