local OrganizationManager = {}
OrganizationManager.__index = OrganizationManager

function OrganizationManager.new(github)
    local organizationManager = {}

    organizationManager.Github = github

    return setmetatable(organizationManager, OrganizationManager)
end

return OrganizationManager