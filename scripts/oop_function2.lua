--[[
********************************************************************** 
*                                                                    *
*   Code Owner: ILIAS TSELIOS                                        *
*   Date: 9/23/19                                                    *
*   Time: 9:35 AM                                                    *
*   OOP programming in Lua using Metatables                          *
*                                                                    *
**********************************************************************
]] --


vector3 = {x=0, y=0, z=0}
vector3.prototype = {x=0, y=0, z=0 }
vector3.mt = {}     --init for being a metatable later

vector3.New = function()                -- Constructor function
    local vec = {}                      -- new table
    setmetatable(vec, vector3.mt)       -- bind the mt to the vec table
    for k, v in pairs(vector3) do       -- loops the top table and puts the values to the vec table
        vec[k] = v
    end
    
    return vec                          -- return the vec table to use it below
end

vector3.Add = function(v1, v2)          -- we add a new function (new method??)
    local vec = vector3.New()           -- create a new instance of the vector3
                                        -- to add the 2 vectors together
    vec.x = v1.x + v2.x
    vec.y = v1.y + v2.y
    vec.z = v1.z + v2.z
    
    return vec
end

v1 = vector3.New()              -- v1 is a new instance
v2 = vector3.New()              -- v2 is a new instance, indepentant from the v1. That's the whole scope here.
                                --

--Add values to the table
v1.x, v1.y, v1.z = 10, 20, 30
v2.x, v2.x, v2.z = v1.x / 2, v1.y / 2, v1.z / 2

v3 = v1.Add(v1, v2)             -- v3 is actually another new instance of the vector3 using the add metamethod(??)

print(v1.x, v1.y, v1.z)
print(v2.x, v2.y, v2.z)
print(v3.x, v3.y, v3.z)