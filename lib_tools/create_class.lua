


function createClass (...)
    local c = {}        -- new class

    local function search (k, plist)
        for i=1, #plist do
            local v = plist[i][k]     -- try `i'-th superclass
            if v then return v end
        end
    end

    local args = {...};

    -- class will search for each method in the list of its
    -- parents (`arg' is the list of parents)
    setmetatable(c, {__index = function (t, k)
        return search(k, args)
    end})

    -- prepare `c' to be the metatable of its instances
    c.__index = c

    -- define a new constructor for this new class
    function c:new (o)
        o = o or {}
        setmetatable(o, c)
        return o
    end

    -- return new class
    return c
end

return createClass;
