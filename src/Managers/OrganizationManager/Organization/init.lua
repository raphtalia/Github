local Organization = {}
Organization.__index = Organization

function Organization.new(organizationManager)
    local organization = {}

    organization.OrganizationManager = organizationManager

    return setmetatable(organization, Organization)
end

return Organization