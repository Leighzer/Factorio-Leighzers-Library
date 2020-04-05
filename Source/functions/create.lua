function leighzermods.utils.createAutoplace(autoplaceName, richness, mainMenuOrder, category, localised_name)
    data:extend({
        {
            type = "autoplace-control",
            name = autoplaceName,
            richness = richness,
            order = mainMenuOrder,
            category=category,
            localised_name = localised_name
        }
    })
end

function leighzermods.utils.createNoiseLayer(noiseLayerName)
    data:extend({
        {
            type = "noise-layer",
            name = noiseLayerName,
        }
    }) 
end

function leighzermods.utils.createItemGroup(itemGroupName,craftingTabOrder,inventoryOrder,iconPath, localised_name)
    data:extend({
        {
            type = "item-group",
            name = itemGroupName,
            order = craftingTabOrder,
            inventory_order = inventoryOrder,
            icon = iconPath,
            icon_size = 128,--assuming using 128 px sized icon - trying to keep param count for these functions down so
            localised_name = localised_name,
          }
    })
end

function leighzermods.utils.createItemSubgroup(itemSubgroupName,itemGroupName,rowOrder)
    data:extend({
        {
            type = "item-subgroup",
            name = itemSubgroupName,
            group = itemGroupName,
            order = rowOrder,
        }
    })
end

--simple item create function (not doing anything fancy with multiple images for icon)
--pictures is really not required unless you are adding an ore item and want the different variations
function leighzermods.utils.createItem(itemName,iconPath,iconSize,subgroup,order,stackSize,pictures, localised_name)
    data:extend({
        {
            type = "item",
            name = itemName,
            icon = iconPath,
            icon_size = iconSize,
            icon_mipmaps = 4,            
            subgroup = subgroup,
            order = order,
            stack_size = stackSize,
            pictures = pictures,
            localised_name = localised_name,
        }
    })
end

function leighzermods.utils.createItemComplex(itemName,icons,subgroup,order,stackSize,pictures, localised_name)
    data:extend({
        {
            type = "item",
            name = itemName,
            icons = icons,
            subgroup = subgroup,
            order = order,
            stack_size = stackSize,
            pictures = pictures,
            localised_name = localised_name,
        }
    })
end

function leighzermods.utils.createFluid(fluidName,baseColor,flowColor,icons,autoBarrel,subgroup,order, localised_name)
    data:extend({
        {
            type = "fluid",
            name = fluidName,
            default_temperature = 25,
            heat_capacity = "0.1KJ",
            base_color = baseColor,
            flow_color = flowColor,
            max_temperature = 100,
            icons = icons,
            auto_barrel = autoBarrel,      
            subgroup = subgroup,
            order = order,
            localised_name = localised_name,
          }
    })
end

--simple recipe create function with one result
function leighzermods.utils.createRecipe(recipeName,energyRequired,enabled,category,ingredients,result,resultCount,subgroup,order,isProductivityEnabled)
    
    local recipe = {
                        type = "recipe",
                        name = recipeName,
                        energy_required = energyRequired,
                        enabled = enabled,
                        category = category,
                        ingredients = ingredients,
                        result = result,
                        result_count = resultCount,
                        subgroup = subgroup,
                        order = order,
                    }
    data:extend({
        recipe
    })

    if isProductivityEnabled then
        table.insert(leighzermods.productivityEnabledRecipes,recipe.name)
    end
end

-- for most cases leave mainProduct alone
function leighzermods.utils.createRecipeComplex(recipeName,energyRequired,enabled,category,ingredients,icons,results,subgroup,order,mainProduct,isProductivityEnabled, localised_name)
    
    local recipe = {
                        type = "recipe",
                        name = recipeName,
                        energy_required = energyRequired,
                        enabled = enabled,
                        category = category,
                        ingredients = ingredients,
                        icons = icons,
                        results = results,            
                        subgroup = subgroup,
                        order = order,
                        main_product = mainProduct,
                        localised_name = localised_name
                    }

    data:extend({
        recipe
    })

    if isProductivityEnabled then
        table.insert(leighzermods.productivityEnabledRecipes,recipe.name)
    end
end

function leighzermods.utils.createTechnology(techName,icons,enabled,effects,unit,prereqs,order, localised_name, localised_description)
    data:extend({
        {
            type = "technology",
            name = techName,
            icons = icons,
            enabled = enabled,
            effects = effects,
            unit = unit,
            prerequisites = prereqs,
            order = order,
            localised_name = localised_name,
            localised_description = localised_description,
        }
    })
end


