---@class table_tools
local table_tools = {};

local json = require("table_tools.json");


---@param str string
---@return table
function table_tools.jsonStrToTable(str)
    return json.decode(str);
end


---@param table t
---@return string
function table_tools.tableToJsonStr(t)
    return json.encode(t);
end


return table_tools;
