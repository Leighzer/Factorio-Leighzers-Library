function leighzermods.utils.hideItem(itemName)
    local item = data.raw.item[itemName]
    item.hidden = true
end

function leighzermods.utils.showItem(itemName)
    local item = data.raw.item[itemName]
    item.hidden = false
end

function leighzermods.utils.setItemSubgroup(itemName, subgroup)
    local item = data.raw.item[itemName]
    item.subgroup = subgroup
end

function leighzermods.utils.setItemOrder(itemName, order)
    local item = data.raw.item[itemName]
    item.order = order
end