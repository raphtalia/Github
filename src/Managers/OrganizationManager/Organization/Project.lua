local Project = {}
Project.__index = Project

function Project.new()
    local project = {}

    return setmetatable(project, Project)
end

return Project