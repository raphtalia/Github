local Commit = {}
Commit.__index = Commit

function Commit.new(commitManager)
    local commit = {}

    commit.CommitManager = commitManager

    return setmetatable(commit, Commit)
end

return Commit