local Base64 = require(script.Base64)
local Http = require(script.Http)

local Github = {
    Authenication = require(script.Authenication),
    Gists = require(script.Gists),
    Git = require(script.Git),
    Issues = require(script.Issues),
    Migrations = require(script.Migrations),
    Organizations = require(script.Organizations),
    Projects = require(script.Projects),
    Repositories = require(script.Repositories),
    Teams = require(script.Teams),
}

for _,v in pairs(Github) do
    v.Base64 = Base64
    v.Http = Http
end

return Github