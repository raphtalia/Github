-- https://docs.github.com/en/free-pro-team@latest/rest/reference/teams

local Teams = {}

function Teams.listTeams(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.createATeam(pathParams, queries, body)
	return Teams.Http.POST("orgs/%s/teams", pathParams, queries, body)
end

function Teams.getATeamByName(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams/%s", pathParams, queries, body)
end

function Teams.updateATeam(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.deleteATeam(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.listTeamProjects(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.checkTeamPermissionsForAProject(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.addOrUpdateTeamProjectPermissions(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.removeAProjectFromATeam(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.listTeamRepositories(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.checkTeamPermissionsForARepository(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.addOrUpdateTeamRepositoryPermissions(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.removeARepositoryFromATeam(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.listChildTeams(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.getATeamLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s", pathParams, queries, body)
end

function Teams.updateATeamLegacy(pathParams, queries, body)
	return Teams.Http.PATCH("teams/%s", pathParams, queries, body)
end

function Teams.deleteATeamLegacy(pathParams, queries, body)
	return Teams.Http.DELETE("teams/%s", pathParams, queries, body)
end

function Teams.listTeamProjectsLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/projects", pathParams, queries, body)
end

function Teams.checkTeamPermissionsForAProjectLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/projects/%s", pathParams, queries, body)
end

function Teams.addOrUpdateTeamProjectPermissionsLegacy(pathParams, queries, body)
	return Teams.Http.PUT("teams/%s/projects/%s", pathParams, queries, body)
end

function Teams.removeAProjectFromATeamLegacy(pathParams, queries, body)
	return Teams.Http.DELETE("teams/%s/projects/%s", pathParams, queries, body)
end

function Teams.listTeamRepositoriesLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/repos", pathParams, queries, body)
end

function Teams.checkTeamPermissionsForARepositoryLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/repos/%s/%s", pathParams, queries, body)
end

function Teams.addOrUpdateTeamRepositoryPermissionsLegacy(pathParams, queries, body)
	return Teams.Http.PUT("teams/%s/repos/%s/%s", pathParams, queries, body)
end

function Teams.removeARepositoryFromATeamLegacy(pathParams, queries, body)
	return Teams.Http.DELETE("teams/%s/repos/%s/%s", pathParams, queries, body)
end

function Teams.listChildTeamsLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/teams", pathParams, queries, body)
end

function Teams.listTeamsForTheAuthenticatedUser(pathParams, queries, body)
	return Teams.Http.GET("user/teams", pathParams, queries, body)
end

function Teams.listDiscussions(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.createADiscussion(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.getADiscussion(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.updateADiscussion(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.deleteADiscussion(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.listDiscussionsLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/discussions", pathParams, queries, body)
end

function Teams.createADiscussionLegacy(pathParams, queries, body)
	return Teams.Http.POST("teams/%s/discussions", pathParams, queries, body)
end

function Teams.getADiscussionLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/discussions/%s", pathParams, queries, body)
end

function Teams.updateADiscussionLegacy(pathParams, queries, body)
	return Teams.Http.PATCH("teams/%s/discussions/%s", pathParams, queries, body)
end

function Teams.deleteADiscussionLegacy(pathParams, queries, body)
	return Teams.Http.DELETE("teams/%s/discussions/%s", pathParams, queries, body)
end

function Teams.listDiscussionComments(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.createADiscussionComment(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.getADiscussionComment(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.updateADiscussionComment(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.deleteADiscussionComment(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.listDiscussionCommentsLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/discussions/%s/comments", pathParams, queries, body)
end

function Teams.createADiscussionCommentLegacy(pathParams, queries, body)
	return Teams.Http.POST("teams/%s/discussions/%s/comments", pathParams, queries, body)
end

function Teams.getADiscussionCommentLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/discussions/%s/comments/%s", pathParams, queries, body)
end

function Teams.updateADiscussionCommentLegacy(pathParams, queries, body)
	return Teams.Http.PATCH("teams/%s/discussions/%s/comments/%s", pathParams, queries, body)
end

function Teams.deleteADiscussionCommentLegacy(pathParams, queries, body)
	return Teams.Http.DELETE("teams/%s/discussions/%s/comments/%s", pathParams, queries, body)
end

function Teams.listPendingTeamInvitations(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.listTeamMembers(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.getTeamMembershipForAUser(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.addOrUpdateTeamMembershipForAUser(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.removeTeamMembershipForAUser(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.listPendingTeamInvitationsLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/invitations", pathParams, queries, body)
end

function Teams.listTeamMembersLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/members", pathParams, queries, body)
end

function Teams.getTeamMemberLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/members/%s", pathParams, queries, body)
end

function Teams.addTeamMemberLegacy(pathParams, queries, body)
	return Teams.Http.PUT("teams/%s/members/%s", pathParams, queries, body)
end

function Teams.removeTeamMemberLegacy(pathParams, queries, body)
	return Teams.Http.DELETE("teams/%s/members/%s", pathParams, queries, body)
end

function Teams.getTeamMembershipForAUserLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/memberships/%s", pathParams, queries, body)
end

function Teams.addOrUpdateTeamMembershipForAUserLegacy(pathParams, queries, body)
	return Teams.Http.PUT("teams/%s/memberships/%s", pathParams, queries, body)
end

function Teams.removeTeamMembershipForAUserLegacy(pathParams, queries, body)
	return Teams.Http.DELETE("teams/%s/memberships/%s", pathParams, queries, body)
end

function Teams.listIdpGroupsForAnOrganization(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/team-sync/groups", pathParams, queries, body)
end

function Teams.listIdpGroupsForATeam(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.createOrUpdateIdpGroupConnections(pathParams, queries, body)
	return Teams.Http.GET("orgs/%s/teams", pathParams, queries, body)
end

function Teams.listIdpGroupsForATeamLegacy(pathParams, queries, body)
	return Teams.Http.GET("teams/%s/team-sync/group-mappings", pathParams, queries, body)
end

function Teams.createOrUpdateIdpGroupConnectionsLegacy(pathParams, queries, body)
	return Teams.Http.PATCH("teams/%s/team-sync/group-mappings", pathParams, queries, body)
end

return Teams