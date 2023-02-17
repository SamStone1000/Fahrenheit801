local dropper = {}

local transposer = component.transposer

local function dropper.dropItem(item, amount)
   if (amount > item.maxSize) then
      dropItem(item, item.maxSize)
      dropItem(item, amount - item.maxSize)
   else
      transposer.transferItem(item.side, sides.sink, item.slot, 1, item.maxSize)
   end
end

local function dropper.dropRecipe(multiplier) --TODO add checks to insure the chamber can make this in one go
   for index, input in pairs(recipe.input) do
      dropItem(input, input.amount * multiplier)
   end
end


return dropper
