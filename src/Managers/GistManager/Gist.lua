local Gist = {}
Gist.__index = Gist

function Gist.new(gistManager)
    local gist = {}

    gist.GistManager = gistManager

    return setmetatable(gist, Gist)
end

function Gist:Update()
    
end

function Gist:Delete()
    
end

function Gist:GetCommits()
    
end

function Gist:GetForks()
    
end

function Gist:Fork()
    
end

function Gist:IsStarred()
    
end

function Gist:Star()
    
end

function Gist:Unstar()
    
end

function Gist:GetRevision()
    
end

return Gist