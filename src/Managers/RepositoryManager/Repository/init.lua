local Repository = {}
Repository.__index = Repository

function Repository.new(repositoryManager)
    local repository = {}

    repository.RepositoryManager = repositoryManager

    return setmetatable(repository, Repository)
end

return Repository