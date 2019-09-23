--[[
********************************************************************** 
*                                                                    *
*   Coder: ILIAS TSELIOS                                             *
*   Date: 9/16/19                                                    *
*   Time: 7:50 PM                                                    *
*                                                                    *
*   Add all the numbers in a table                                   *
*                                                                    *
**********************************************************************
]]--

tbl         = {}        -- create an empty table
x           = 0
y           = 0

for i = 1, 10 do         -- insert values to the table
    tbl[i] = x + i
    print("Value ".. i .. " :" .. tbl[i])
end

for i = 1, #tbl do       -- sum the values of the table
    y = y + tbl[i]
    print("The sum now is: " .. y)
end

print("The total sum is: " .. y)