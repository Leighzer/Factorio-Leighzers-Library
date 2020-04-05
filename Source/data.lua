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

--populate leighzermods.tints, leighzermods.leighzerfactoricons.tints, leighzermods.factorioCheetSheetTints
require("tints")

--populate leighzermods.utils with ALL THE FUNCTIONS/THINGS
require("functions.create")
require("functions.factoricon")
require("functions.createfromgeneric")
require("functions.item")
require("functions.misc")
require("functions.recipe")
require("functions.technology")

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



