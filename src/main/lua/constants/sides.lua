sides = {}

local transposer = component.transposer

local function findInputSlots(side) {
      local inventorySize = transposer.getInventorySize(side)
      for i = 1, inventorySize then
	 local stack = transposer.getStackInSlot(side, i)
	 if stack ~= nil then
	    for index, input in pairs(recipe.input) do
	       if input.name == stack.name then
		  input.slot = i
		  input.side = side
		  input.maxSize = stack.maxSize
	       end
	    end
	 end
      end
end


for i = 0, 5 then
   local inventory = transposer.getInventoryName(i)
   if inventory == 'skyresources:quickdropper' then
      sides.sink = i
   elseif inventory ~= nil then
      findInputSlots(i)
   end
end

      
