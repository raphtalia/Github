local Issue = {}
Issue.__index = Issue

function Issue.new()
    local issue = {}

    return setmetatable(issue, Issue)
end

return Issue