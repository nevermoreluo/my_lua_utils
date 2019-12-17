
---@class string_tools
local M = {};

---@param inputstr string string for split
---@param sep string sep
---@return table
function M.split (inputstr,  sep)
    if sep == nil then
            sep = "%s";
    end
    local t={};
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str);
    end
    return t;
end


---@param inputstr string
---@param ends string
---@return boolean
function M.startswith(inputstr, start)
    return string.sub(inputstr, 1, string.len(start))==start
end

---@param inputstr string
---@param ends string
---@return boolean
function M.endswith(inputstr, ends)
    return ends == '' or string.sub(inputstr, -string.len(ends)) == ends
end


 ---@param str string 
---@return string 
function M.capitalize(str)
    return (str:gsub("^%l", string.upper));
end

---@param list table
---@param delimiter string
---@return string
-- example: join( {"Anna", "Bob", "Charlie", "Dolores"}, ", ")
function M.join(list, delimiter)
    return table.concat(list, delimiter)
    -- local len = getn(list)
    -- if len == 0 then
    --    return "" 
    -- end
    -- local s = list[1]
    -- for i = 2, len do 
    --    s = s .. delimiter .. list[i] 
    -- end
    -- return s
end


return M;



