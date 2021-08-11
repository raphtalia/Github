local GistManager = require(script.Managers.GistManager)
local OrganizationManager = require(script.Managers.OrganizationManager)
local UserManager = require(script.Managers.UserManager)

local Http = require(script.Http)
local Base64 = require(script.Base64)
local Promise = require(script.Promise)

local Github = {}
Github.__index = Github

function Github.new()
    local github = {}

    github.Token = ""

    github.Gists = GistManager.new(github)
    github.Organizations = OrganizationManager.new(github)
    github.Users = UserManager.new(github)

    return setmetatable(github, Github)
end

function Github:_request(method, path, pathParams, queries)
    return Promise.new(function(resolve)
        resolve(Http[method:lower()](
            "https://api.github.com/".. path,
            {
                Accept = "application/vnd.github.v3+json",
                authorization = "Basic ".. Base64.encode(self.Token)
            },
            pathParams,
            queries
        ))
    end):catch(warn)
end

function Github:Authenicate(token)
    self.Token = token
end

return Github