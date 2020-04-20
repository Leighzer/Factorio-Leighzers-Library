if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}        
end

if not leighzermods.leighzerfactoricons then
    leighzermods.leighzerfactoricons = {}
end

if not leighzermods.productivityEnabledRecipes then --list of recipe names that are going to get productivity modules enabled
    leighzermods.productivityEnabledRecipes = {}
end
leighzermods.utils = {}

--populate leighzermods.tints, leighzermods.factorioCheetSheetTints
require("tints")

--populate leighzermods.utils with ALL THE FUNCTIONS/THINGS
require("functions.autoplace-control")
require("functions.factoricon")
require("functions.fluid")
require("functions.generic")
require("functions.item-group-subgroup")
require("functions.item")
require("functions.map-gen-preset")
require("functions.misc")
require("functions.noise-layer")
require("functions.recipe")
require("functions.resource")
require("functions.technology")

-- require("testfromgeneric")
--require("testrainbowore")

--enable productivity effect on recipes in leighzermods.productivityEnabledRecipes
for k, v in pairs(data.raw.module) do
    if v.name:find("productivity%-module") and v.limitation then
    for _, recipe in ipairs(leighzermods.productivityEnabledRecipes) do
        if data.raw["recipe"][recipe] then
        table.insert(v.limitation, recipe)
        end
    end
    end
end



