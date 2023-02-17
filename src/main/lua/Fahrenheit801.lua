require('constants.recipe')
require('constants.sides')

local dropper = require('lib.dropper')
local rs = component.redstone

local function craftRecipe --Check to make sure there's a need for the recipe to be crafted with a level emitter or something, also check there's enough ingredients too
   dropper.dropRecipe(8)
   rs.setOutput(5, 1) --The side is probably wrong change it to the correct one
   rs.setOutput(5, 0)
end

while true do --crafts a stack of netherrack every second
   craftRecipe()
   os.sleep(1)
end
