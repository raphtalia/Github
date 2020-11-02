-- https://docs.github.com/en/free-pro-team@latest/rest/reference/teams

local Teams = {}

function Teams.listTeams(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.createATeam(org, body)
	return Teams.Http.POST(("https://api.github.com/orgs/%s/teams"):format(org), nil, body)
end

function Teams.getATeamByName(org, team_slug)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams/%s"):format(org, team_slug))
end

function Teams.updateATeam(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.deleteATeam(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.listTeamProjects(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.checkTeamPermissionsForAProject(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.addOrUpdateTeamProjectPermissions(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.removeAProjectFromATeam(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.listTeamRepositories(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.checkTeamPermissionsForARepository(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.addOrUpdateTeamRepositoryPermissions(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.removeARepositoryFromATeam(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.listChildTeams(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.getATeamLegacy(team_id)
	return Teams.Http.GET(("https://api.github.com/teams/%s"):format(team_id))
end

function Teams.updateATeamLegacy(team_id, body)
	return Teams.Http.PATCH(("https://api.github.com/teams/%s"):format(team_id), nil, body)
end

function Teams.deleteATeamLegacy(team_id)
	return Teams.Http.DELETE(("https://api.github.com/teams/%s"):format(team_id))
end

function Teams.listTeamProjectsLegacy(team_id, parameters)
	return Teams.Http.GET(("https://api.github.com/teams/%s/projects"):format(team_id), parameters)
end

function Teams.checkTeamPermissionsForAProjectLegacy(team_id, project_id)
	return Teams.Http.GET(("https://api.github.com/teams/%s/projects/%s"):format(team_id, project_id))
end

function Teams.addOrUpdateTeamProjectPermissionsLegacy(team_id, project_id, body)
	return Teams.Http.PUT(("https://api.github.com/teams/%s/projects/%s"):format(team_id, project_id), nil, body)
end

function Teams.removeAProjectFromATeamLegacy(team_id, project_id)
	return Teams.Http.DELETE(("https://api.github.com/teams/%s/projects/%s"):format(team_id, project_id))
end

function Teams.listTeamRepositoriesLegacy(team_id, parameters)
	return Teams.Http.GET(("https://api.github.com/teams/%s/repos"):format(team_id), parameters)
end

function Teams.checkTeamPermissionsForARepositoryLegacy(team_id, owner, repo)
	return Teams.Http.GET(("https://api.github.com/teams/%s/repos/%s/%s"):format(team_id, owner, repo))
end

function Teams.addOrUpdateTeamRepositoryPermissionsLegacy(team_id, owner, repo, body)
	return Teams.Http.PUT(("https://api.github.com/teams/%s/repos/%s/%s"):format(team_id, owner, repo), nil, body)
end

function Teams.removeARepositoryFromATeamLegacy(team_id, owner, repo)
	return Teams.Http.DELETE(("https://api.github.com/teams/%s/repos/%s/%s"):format(team_id, owner, repo))
end

function Teams.listChildTeamsLegacy(team_id, parameters)
	return Teams.Http.GET(("https://api.github.com/teams/%s/teams"):format(team_id), parameters)
end

function Teams.listTeamsForTheAuthenticatedUser(parameters)
	return Teams.Http.GET(("https://api.github.com/user/teams"):format(), parameters)
end

function Teams.listDiscussions(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.createADiscussion(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.getADiscussion(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.updateADiscussion(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.deleteADiscussion(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.listDiscussionsLegacy(team_id, parameters)
	return Teams.Http.GET(("https://api.github.com/teams/%s/discussions"):format(team_id), parameters)
end

function Teams.createADiscussionLegacy(team_id, body)
	return Teams.Http.POST(("https://api.github.com/teams/%s/discussions"):format(team_id), nil, body)
end

function Teams.getADiscussionLegacy(team_id, discussion_number)
	return Teams.Http.GET(("https://api.github.com/teams/%s/discussions/%s"):format(team_id, discussion_number))
end

function Teams.updateADiscussionLegacy(team_id, discussion_number, body)
	return Teams.Http.PATCH(("https://api.github.com/teams/%s/discussions/%s"):format(team_id, discussion_number), nil, body)
end

function Teams.deleteADiscussionLegacy(team_id, discussion_number)
	return Teams.Http.DELETE(("https://api.github.com/teams/%s/discussions/%s"):format(team_id, discussion_number))
end

function Teams.listDiscussionComments(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.createADiscussionComment(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.getADiscussionComment(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.updateADiscussionComment(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.deleteADiscussionComment(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.listDiscussionCommentsLegacy(team_id, discussion_number, parameters)
	return Teams.Http.GET(("https://api.github.com/teams/%s/discussions/%s/comments"):format(team_id, discussion_number), parameters)
end

function Teams.createADiscussionCommentLegacy(team_id, discussion_number, body)
	return Teams.Http.POST(("https://api.github.com/teams/%s/discussions/%s/comments"):format(team_id, discussion_number), nil, body)
end

function Teams.getADiscussionCommentLegacy(team_id, discussion_number, comment_number)
	return Teams.Http.GET(("https://api.github.com/teams/%s/discussions/%s/comments/%s"):format(team_id, discussion_number, comment_number))
end

function Teams.updateADiscussionCommentLegacy(team_id, discussion_number, comment_number, body)
	return Teams.Http.PATCH(("https://api.github.com/teams/%s/discussions/%s/comments/%s"):format(team_id, discussion_number, comment_number), nil, body)
end

function Teams.deleteADiscussionCommentLegacy(team_id, discussion_number, comment_number)
	return Teams.Http.DELETE(("https://api.github.com/teams/%s/discussions/%s/comments/%s"):format(team_id, discussion_number, comment_number))
end

function Teams.listPendingTeamInvitations(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.listTeamMembers(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.getTeamMembershipForAUser(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.addOrUpdateTeamMembershipForAUser(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.removeTeamMembershipForAUser(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.listPendingTeamInvitationsLegacy(team_id, parameters)
	return Teams.Http.GET(("https://api.github.com/teams/%s/invitations"):format(team_id), parameters)
end

function Teams.listTeamMembersLegacy(team_id, parameters)
	return Teams.Http.GET(("https://api.github.com/teams/%s/members"):format(team_id), parameters)
end

function Teams.getTeamMemberLegacy(team_id, username)
	return Teams.Http.GET(("https://api.github.com/teams/%s/members/%s"):format(team_id, username))
end

function Teams.addTeamMemberLegacy(team_id, username)
	return Teams.Http.PUT(("https://api.github.com/teams/%s/members/%s"):format(team_id, username))
end

function Teams.removeTeamMemberLegacy(team_id, username)
	return Teams.Http.DELETE(("https://api.github.com/teams/%s/members/%s"):format(team_id, username))
end

function Teams.getTeamMembershipForAUserLegacy(team_id, username)
	return Teams.Http.GET(("https://api.github.com/teams/%s/memberships/%s"):format(team_id, username))
end

function Teams.addOrUpdateTeamMembershipForAUserLegacy(team_id, username, body)
	return Teams.Http.PUT(("https://api.github.com/teams/%s/memberships/%s"):format(team_id, username), nil, body)
end

function Teams.removeTeamMembershipForAUserLegacy(team_id, username)
	return Teams.Http.DELETE(("https://api.github.com/teams/%s/memberships/%s"):format(team_id, username))
end

function Teams.listIdpGroupsForAnOrganization(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/team-sync/groups"):format(org), parameters)
end

function Teams.listIdpGroupsForATeam(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.createOrUpdateIdpGroupConnections(org, parameters)
	return Teams.Http.GET(("https://api.github.com/orgs/%s/teams"):format(org), parameters)
end

function Teams.listIdpGroupsForATeamLegacy(team_id)
	return Teams.Http.GET(("https://api.github.com/teams/%s/team-sync/group-mappings"):format(team_id))
end

function Teams.createOrUpdateIdpGroupConnectionsLegacy(team_id, body)
	return Teams.Http.PATCH(("https://api.github.com/teams/%s/team-sync/group-mappings"):format(team_id), nil, body)
end

return Teams