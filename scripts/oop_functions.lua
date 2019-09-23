--[[
********************************************************************** 
*                                                                    *
*   Code Owner: ILIAS TSELIOS                                        *
*   Date: 9/23/19                                                    *
*   Time: 9:35 AM                                                    *
*   OOP programming in Lua using Functions                           *
*                                                                    *
**********************************************************************
]] --


--Create a class to compute the area of a shape.
function newShape(width, height)
    
    return {
        width = width or 0,
        height = height or 0,
        
        getArea = function(self)                --We add a METHOD
            return self.width * self.height
        end
    }
end



function newRectangle(x, y, width, height)
    local rect = newShape(width, height)
    
    rect.x = x or 0
    rect.y = y or 0
    
    rect.isSquare = function(self)
        return self.width * self.height
    end
    
    return rect
end


function newCirlce(x, y, radius)
    local circle = newShape()
    
    circle.radius = radius or 0
    
    circle.getArea = function(self)
        return math.pi * math.pow(radius, 2)
    end
    
    return circle
end

local myShape = newCircle(5,5,10)
print(myShape.getArea)