---@class table_tools
local table_tools = {};

local json = require("table_tools.json");
local OrderedTable = require("table_tools.ordered_table");

---@param str string
---@return table
function table_tools.jsonStrToTable(str)
    return json.decode(str);
end


---@param t table
---@return string
function table_tools.tableToJsonStr(t)
    return json.encode(t);
end

table_tools.OrderedTable = OrderedTable;

---@param t table
---@return number
function table_tools.count(t)
    local count = 0;
    for _, v in pairs(t) do
        count = count + 1;
    end
    return count;
end


return table_tools;
