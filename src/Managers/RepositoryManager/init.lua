local RepositoryManager = {}
RepositoryManager.__index = RepositoryManager

function RepositoryManager.new()
    local repositoryManager = {}

    return setmetatable(repositoryManager, RepositoryManager)
end

return RepositoryManager