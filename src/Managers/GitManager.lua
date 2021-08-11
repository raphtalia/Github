local GitManager = {}
GitManager.__index = GitManager

function GitManager.new()
    local gitManager = {}

    return setmetatable(gitManager, GitManager)
end

return GitManager