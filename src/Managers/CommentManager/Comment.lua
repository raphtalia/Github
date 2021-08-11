local Comment = {}
Comment.__index = Comment

function Comment.new(commentManager)
    local comment = {}

    comment.CommentManager = commentManager

    return setmetatable(comment, Comment)
end

function Comment:Update()
    
end

function Comment:Delete()
    
end

return Comment