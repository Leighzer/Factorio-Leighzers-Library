function leighzermods.utils.disableRecipe(recipeName)
    local recipe = data.raw.recipe[recipeName]
    recipe.enabled = false
end

function leighzermods.utils.enableRecipe(recipeName)
    local recipe = data.raw.recipe[recipeName]
    recipe.enabled = true
end

function leighzermods.utils.hideRecipe(recipeName)
    local recipe = data.raw.recipe[recipeName]
    recipe.hidden = true
end

function leighzermods.utils.showRecipe(recipeName)
    local recipe = data.raw.recipe[recipeName]
    recipe.hidden = false
end

function leighzermods.utils.addIngredientToRecipe(recipeName,ingredient)
    local recipe = data.raw.recipe[recipeName]
    table.insert(recipe.ingredients,ingredient)
end

function leighzermods.utils.removeIngredientFromRecipe(recipeName,ingredientName)
    local recipe = data.raw.recipe[recipeName]
    for _,ingredient in pairs(recipe.ingredients) do
        if (ingredient.name and ingredient.name == ingredientName) or (ingredient[1] == ingredientName) then 
            table.remove(recipe.ingredients,_)
        end
    end
end

function leighzermods.utils.swapIngredient(recipeName,oldIngredientName,newIngredient)
    leighzermods.utils.removeIngredientFromRecipe(recipeName,oldIngredientName)
    leighzermods.utils.addIngredientToRecipe(recipeName,newIngredient)
end

function leighzermods.utils.setRecipeCraftingCategory(recipeName,craftingCategoryName)
    local recipe = data.raw.recipe[recipeName]
    recipe.category = craftingCategoryName
end

function leighzermods.utils.setRecipeSubgroup(recipeName,subgroup)
    local recipe = data.raw.recipe[recipeName]
    recip.subgroup = subgroup
end

function leighzermods.utils.setRecipeOrder(recipeName,order)
    local recipe = data.raw.recipe[recipeName]
    recip.order = order
end

--function name says it all lol
function leighzermods.utils.setRecipeToCraftingWithFluidCategoryIfHasFluidIngredient(recipeName)
    local recipe = data.raw.recipe[recipeName]
    for _,ingredient in pairs(recipe.ingredients) do
        if (ingredient.type and ingredient.type == "fluid") then 
            recipe.category = "crafting-with-fluid"
        end
        break
    end
end