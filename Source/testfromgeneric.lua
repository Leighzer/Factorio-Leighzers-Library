-- local current = 0
-- local max = -1
-- local order = "a"
-- for tintName, tint in pairs(leighzermods.tints) do
    
--     if current == max then
--         break
--     end

--     local materialName = nil    

--     --ore entity    
--     local autoplaceSettings = {--table that gets fed into resource_autoplace.resource_autoplace_settings{}
--         order = "z", --ground order priority, who overwrites who
--         base_density = 10,
--         has_starting_area_placement = true,
--         regular_rq_factor_multiplier = 1.1,
--         starting_rq_factor_multiplier = 1.5,
--     }
--     --leighzermods.utils.createOreFromGeneric(materialName,tintName,"h",5,autoplaceSettings,"z")    
--     --leighzermods.utils.createOreAutoplaceFromGeneric(materialName,tintName,"z")
--     --leighzermods.utils.createOreNoiseLayerFromGeneric(materialName,tintName)
--     --leighzermods.utils.createOreParticleFromGeneric(materialName,tintName)
    
--     leighzermods.utils.createItemSubgroup(tintName,"intermediate-products", order)

--     --all possible items for an ore
--     for _,v in pairs(leighzermods.utils.supportedGenericTypes) do        
--         leighzermods.utils.createItemOrFluidFromGeneric(materialName,tintName,v,tintName,"a",100)
--         --leighzermods.utils.createRecipe()
--     end

--     order = order .. "a"

--     current = current + 1
-- end