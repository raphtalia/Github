-- https://docs.github.com/en/free-pro-team@latest/rest/reference/orgs

local Organizations = {}

function Organizations.listOrganizations(pathParams, queries, body)
	return Organizations.Http.GET("organizations", pathParams, queries, body)
end

function Organizations.getAnOrganization(pathParams, queries, body)
	return Organizations.Http.GET("organizations", pathParams, queries, body)
end

function Organizations.updateAnOrganization(pathParams, queries, body)
	return Organizations.Http.GET("organizations", pathParams, queries, body)
end

function Organizations.listSamlSsoAuthorizationsForAnOrganization(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/credential-authorizations", pathParams, queries, body)
end

function Organizations.removeASamlSsoAuthorizationForAnOrganization(pathParams, queries, body)
	return Organizations.Http.DELETE("orgs/%s/credential-authorizations/%s", pathParams, queries, body)
end

function Organizations.listAppInstallationsForAnOrganization(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/installations", pathParams, queries, body)
end

function Organizations.listOrganizationsForTheAuthenticatedUser(pathParams, queries, body)
	return Organizations.Http.GET("user/orgs", pathParams, queries, body)
end

function Organizations.listOrganizationsForAUser(pathParams, queries, body)
	return Organizations.Http.GET("users/%s/orgs", pathParams, queries, body)
end

function Organizations.listUsersBlockedByAnOrganization(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/blocks", pathParams, queries, body)
end

function Organizations.checkIfAUserIsBlockedByAnOrganization(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/blocks/%s", pathParams, queries, body)
end

function Organizations.blockAUserFromAnOrganization(pathParams, queries, body)
	return Organizations.Http.GET("organizations", pathParams, queries, body)
end

function Organizations.unblockAUserFromAnOrganization(pathParams, queries, body)
	return Organizations.Http.DELETE("orgs/%s/blocks/%s", pathParams, queries, body)
end

function Organizations.listPendingOrganizationInvitations(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/invitations", pathParams, queries, body)
end

function Organizations.createAnOrganizationInvitation(pathParams, queries, body)
	return Organizations.Http.POST("orgs/%s/invitations", pathParams, queries, body)
end

function Organizations.listOrganizationInvitationTeams(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/invitations/%s/teams", pathParams, queries, body)
end

function Organizations.listOrganizationMembers(pathParams, queries, body)
	return Organizations.Http.GET("organizations", pathParams, queries, body)
end

function Organizations.checkOrganizationMembershipForAUser(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/members/%s", pathParams, queries, body)
end

function Organizations.removeAnOrganizationMember(pathParams, queries, body)
	return Organizations.Http.DELETE("orgs/%s/members/%s", pathParams, queries, body)
end

function Organizations.getOrganizationMembershipForAUser(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/memberships/%s", pathParams, queries, body)
end

function Organizations.setOrganizationMembershipForAUser(pathParams, queries, body)
	return Organizations.Http.PUT("orgs/%s/memberships/%s", pathParams, queries, body)
end

function Organizations.removeOrganizationMembershipForAUser(pathParams, queries, body)
	return Organizations.Http.DELETE("orgs/%s/memberships/%s", pathParams, queries, body)
end

function Organizations.listPublicOrganizationMembers(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/public_members", pathParams, queries, body)
end

function Organizations.checkPublicOrganizationMembershipForAUser(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/public_members/%s", pathParams, queries, body)
end

function Organizations.setPublicOrganizationMembershipForTheAuthenticatedUser(pathParams, queries, body)
	return Organizations.Http.PUT("orgs/%s/public_members/%s", pathParams, queries, body)
end

function Organizations.removePublicOrganizationMembershipForTheAuthenticatedUser(pathParams, queries, body)
	return Organizations.Http.DELETE("orgs/%s/public_members/%s", pathParams, queries, body)
end

function Organizations.listOrganizationMembershipsForTheAuthenticatedUser(pathParams, queries, body)
	return Organizations.Http.GET("user/memberships/orgs", pathParams, queries, body)
end

function Organizations.getAnOrganizationMembershipForTheAuthenticatedUser(pathParams, queries, body)
	return Organizations.Http.GET("user/memberships/orgs/%s", pathParams, queries, body)
end

function Organizations.updateAnOrganizationMembershipForTheAuthenticatedUser(pathParams, queries, body)
	return Organizations.Http.PATCH("user/memberships/orgs/%s", pathParams, queries, body)
end

function Organizations.listOutsideCollaboratorsForAnOrganization(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/outside_collaborators", pathParams, queries, body)
end

function Organizations.convertAnOrganizationMemberToOutsideCollaborator(pathParams, queries, body)
	return Organizations.Http.PUT("orgs/%s/outside_collaborators/%s", pathParams, queries, body)
end

function Organizations.removeOutsideCollaboratorFromAnOrganization(pathParams, queries, body)
	return Organizations.Http.DELETE("orgs/%s/outside_collaborators/%s", pathParams, queries, body)
end

function Organizations.listOrganizationWebhooks(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/hooks", pathParams, queries, body)
end

function Organizations.createAnOrganizationWebhook(pathParams, queries, body)
	return Organizations.Http.POST("orgs/%s/hooks", pathParams, queries, body)
end

function Organizations.getAnOrganizationWebhook(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/hooks/%s", pathParams, queries, body)
end

function Organizations.updateAnOrganizationWebhook(pathParams, queries, body)
	return Organizations.Http.PATCH("orgs/%s/hooks/%s", pathParams, queries, body)
end

function Organizations.deleteAnOrganizationWebhook(pathParams, queries, body)
	return Organizations.Http.DELETE("orgs/%s/hooks/%s", pathParams, queries, body)
end

function Organizations.getAWebhookConfigurationForAnOrganization(pathParams, queries, body)
	return Organizations.Http.GET("orgs/%s/hooks/%s", pathParams, queries, body)
end

function Organizations.updateAWebhookConfigurationForAnOrganization(pathParams, queries, body)
	return Organizations.Http.PATCH("orgs/%s/hooks/%s", pathParams, queries, body)
end

function Organizations.pingAnOrganizationWebhook(pathParams, queries, body)
	return Organizations.Http.POST("orgs/%s/hooks/%s/pings", pathParams, queries, body)
end

return Organizations