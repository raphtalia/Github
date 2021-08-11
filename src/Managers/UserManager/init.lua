local UserManager = {}
UserManager.__index = UserManager

function UserManager.new(github)
    local userManager = {}

    userManager.Github = github

    return setmetatable(userManager, UserManager)
end

function UserManager:GetUsers(since, perPage)
    return self.Github:_request("GET", "user", nil, {
        since = since,
        per_page = perPage,
    })
end

function UserManager:GetUser(username)
    return self.Github:_request("GET", "user", {username})
end

function UserManager:GetAuthenicatedUser()
    return self.Github:_request("GET", "user")
end

return UserManager