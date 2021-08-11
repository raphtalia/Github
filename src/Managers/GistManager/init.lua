local GistManager = {}
GistManager.__index = GistManager

function GistManager.new(github)
    local gistManager = {}

    gistManager.Github = github

    return setmetatable(gistManager, GistManager)
end

function GistManager:GetGistsForTheAuthenicatedUser()
    
end

function GistManager:CreateAGist()
    
end

function GistManager:GetPublicGists()
    
end

function GistManager:GetStarredGists()
    
end

function GistManager:GetAGist()
    
end

function GistManager:GetGistsForAUser()
    
end

return GistManager