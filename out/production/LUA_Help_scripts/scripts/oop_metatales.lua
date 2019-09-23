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
vector3.mt = {}

vector3.New = function()
    local vec = {}
    setmetatable(vec, vector3.mt)
    for k, v in pairs(vector3) do
        vec[k] = v
    end
    
    return vec
end

vector3.Add = function(v1, v2)
    local vec = vector3.New()
    
    vec.x = v1.x + v2.x
    vec.y = v1.y + v2.y
    vec.z = v1.z + v2.z
    
    return vec
end

v1 = vector3.New()
v2 = vector3.New()

v1.x = 10
v1.y = 20
v1.z = 30

v2.x = v1.x / 2
v2.y = v1.y / 2
v2.z = v1.z / 2

v3 = v1.Add(v1, v2)

print(v1.x, v1.y, v1.z)
print(v2.x, v2.y, v2.z)
print(v3.x, v3.y, v3.z)