local CommentManager = {}
CommentManager.__index = CommentManager

function CommentManager.new()
    local commentManager = {}

    return setmetatable(commentManager, CommentManager)
end

function CommentManager:GetComments()
    
end

function CommentManager:CreateComment()
    
end

function CommentManager:GetComment()
    
end

return CommentManager