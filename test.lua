---@class string_tools
local string_tools = require("string_tools");

---@class table_tools
local table_tools = require("table_tools");

-- print(string_tools.capitalize("sfsfsfs"));

-- print(string_tools.capitalize("sfsfsfs fdfd"));

-- print(string_tools.join( {"Anna", "Bob", "Charlie", "Dolores"}, "-"));

-- print(table_tools.tableToJsonStr({ ["ssss"]= "2222" }))

-- print(table_tools.jsonStrToTable('{"xs": 3}').xs);

_M = {};


_M["s"] = 22221;

if nil == _M["sssss"] then
    print("got nil");
else
    print(_M["sssss"]);
end


print(_M["s"]);



