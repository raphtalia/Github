local Team = {}
Team.__index = Team

function Team.new()
    local team = {}

    return setmetatable(team, Team)
end

return Team