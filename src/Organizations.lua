-- https://docs.github.com/en/free-pro-team@latest/rest/reference/orgs

local Organizations = {}

function Organizations.listOrganizations(parameters)
	return Organizations.Http:GET(("https://api.github.com/organizations"):format(), parameters)
end

function Organizations.getAnOrganization(parameters)
	return Organizations.Http:GET(("https://api.github.com/organizations"):format(), parameters)
end

function Organizations.updateAnOrganization(parameters)
	return Organizations.Http:GET(("https://api.github.com/organizations"):format(), parameters)
end

function Organizations.listSamlSsoAuthorizationsForAnOrganization(org)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/credential-authorizations"):format(org))
end

function Organizations.removeASamlSsoAuthorizationForAnOrganization(org, credential_id)
	return Organizations.Http:DELETE(("https://api.github.com/orgs/%s/credential-authorizations/%s"):format(org, credential_id))
end

function Organizations.listAppInstallationsForAnOrganization(org, parameters)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/installations"):format(org), parameters)
end

function Organizations.listOrganizationsForTheAuthenticatedUser(parameters)
	return Organizations.Http:GET(("https://api.github.com/user/orgs"):format(), parameters)
end

function Organizations.listOrganizationsForAUser(username, parameters)
	return Organizations.Http:GET(("https://api.github.com/users/%s/orgs"):format(username), parameters)
end

function Organizations.listUsersBlockedByAnOrganization(org)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/blocks"):format(org))
end

function Organizations.checkIfAUserIsBlockedByAnOrganization(org, username)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/blocks/%s"):format(org, username))
end

function Organizations.blockAUserFromAnOrganization(parameters)
	return Organizations.Http:GET(("https://api.github.com/organizations"):format(), parameters)
end

function Organizations.unblockAUserFromAnOrganization(org, username)
	return Organizations.Http:DELETE(("https://api.github.com/orgs/%s/blocks/%s"):format(org, username))
end

function Organizations.listPendingOrganizationInvitations(org, parameters)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/invitations"):format(org), parameters)
end

function Organizations.createAnOrganizationInvitation(org, body)
	return Organizations.Http:POST(("https://api.github.com/orgs/%s/invitations"):format(org), body)
end

function Organizations.listOrganizationInvitationTeams(org, invitation_id, parameters)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/invitations/%s/teams"):format(org, invitation_id), parameters)
end

function Organizations.listOrganizationMembers(parameters)
	return Organizations.Http:GET(("https://api.github.com/organizations"):format(), parameters)
end

function Organizations.checkOrganizationMembershipForAUser(org, username)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/members/%s"):format(org, username))
end

function Organizations.removeAnOrganizationMember(org, username)
	return Organizations.Http:DELETE(("https://api.github.com/orgs/%s/members/%s"):format(org, username))
end

function Organizations.getOrganizationMembershipForAUser(org, username)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/memberships/%s"):format(org, username))
end

function Organizations.setOrganizationMembershipForAUser(org, username, body)
	return Organizations.Http:PUT(("https://api.github.com/orgs/%s/memberships/%s"):format(org, username), body)
end

function Organizations.removeOrganizationMembershipForAUser(org, username)
	return Organizations.Http:DELETE(("https://api.github.com/orgs/%s/memberships/%s"):format(org, username))
end

function Organizations.listPublicOrganizationMembers(org, parameters)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/public_members"):format(org), parameters)
end

function Organizations.checkPublicOrganizationMembershipForAUser(org, username)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/public_members/%s"):format(org, username))
end

function Organizations.setPublicOrganizationMembershipForTheAuthenticatedUser(org, username)
	return Organizations.Http:PUT(("https://api.github.com/orgs/%s/public_members/%s"):format(org, username))
end

function Organizations.removePublicOrganizationMembershipForTheAuthenticatedUser(org, username)
	return Organizations.Http:DELETE(("https://api.github.com/orgs/%s/public_members/%s"):format(org, username))
end

function Organizations.listOrganizationMembershipsForTheAuthenticatedUser(parameters)
	return Organizations.Http:GET(("https://api.github.com/user/memberships/orgs"):format(), parameters)
end

function Organizations.getAnOrganizationMembershipForTheAuthenticatedUser(org)
	return Organizations.Http:GET(("https://api.github.com/user/memberships/orgs/%s"):format(org))
end

function Organizations.updateAnOrganizationMembershipForTheAuthenticatedUser(org, body)
	return Organizations.Http:PATCH(("https://api.github.com/user/memberships/orgs/%s"):format(org), body)
end

function Organizations.listOutsideCollaboratorsForAnOrganization(org, parameters)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/outside_collaborators"):format(org), parameters)
end

function Organizations.convertAnOrganizationMemberToOutsideCollaborator(org, username)
	return Organizations.Http:PUT(("https://api.github.com/orgs/%s/outside_collaborators/%s"):format(org, username))
end

function Organizations.removeOutsideCollaboratorFromAnOrganization(org, username)
	return Organizations.Http:DELETE(("https://api.github.com/orgs/%s/outside_collaborators/%s"):format(org, username))
end

function Organizations.listOrganizationWebhooks(org, parameters)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/hooks"):format(org), parameters)
end

function Organizations.createAnOrganizationWebhook(org, body)
	return Organizations.Http:POST(("https://api.github.com/orgs/%s/hooks"):format(org), body)
end

function Organizations.getAnOrganizationWebhook(org, hook_id)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/hooks/%s"):format(org, hook_id))
end

function Organizations.updateAnOrganizationWebhook(org, hook_id, body)
	return Organizations.Http:PATCH(("https://api.github.com/orgs/%s/hooks/%s"):format(org, hook_id), body)
end

function Organizations.deleteAnOrganizationWebhook(org, hook_id)
	return Organizations.Http:DELETE(("https://api.github.com/orgs/%s/hooks/%s"):format(org, hook_id))
end

function Organizations.getAWebhookConfigurationForAnOrganization(org, hook_id)
	return Organizations.Http:GET(("https://api.github.com/orgs/%s/hooks/%s"):format(org, hook_id))
end

function Organizations.updateAWebhookConfigurationForAnOrganization(org, hook_id, body)
	return Organizations.Http:PATCH(("https://api.github.com/orgs/%s/hooks/%s"):format(org, hook_id), body)
end

function Organizations.pingAnOrganizationWebhook(org, hook_id)
	return Organizations.Http:POST(("https://api.github.com/orgs/%s/hooks/%s/pings"):format(org, hook_id))
end

return Organizations