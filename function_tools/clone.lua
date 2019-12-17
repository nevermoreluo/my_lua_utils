



---@param fn function 
---@param cloneUpValue boolean cloneUpValue [default = false]
---@return function return clone function
local function cloneFunction(fn, cloneUpValue)
    if true ~= cloneUpValue then
        cloneUpValue = false;
    end
    local dumped = string.dump(fn)
    local cloned = loadstring(dumped)
    if cloneUpValue then
        local i = 1
        while true do
            local name = debug.getupvalue(fn, i)
            if not name then
                break
            end
            debug.upvaluejoin(cloned, i, fn, i)
            i = i + 1
        end
    end
    return cloned
end


return clone_function;






