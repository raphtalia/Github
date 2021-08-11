local User = {}
User.__index = User

function User.new(userManager)
    local user = {}

    user.UserManager = userManager

    return setmetatable(user, User)
end

return User