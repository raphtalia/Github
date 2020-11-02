-- https://docs.github.com/en/free-pro-team@latest/rest/reference/repos#list-organization-repositories
-- https://developer.github.com/v3/repos/

local Repositories = {}

function Repositories.listOrganizationRepositories(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.createAnOrganizationRepository(pathParams, queries, body)
	return Repositories.Http.POST("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.getARepository(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.updateARepository(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.deleteARepository(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s", pathParams, queries, body)
end

function Repositories.enableAutomatedSecurityFixes(pathParams, queries, body)
	return Repositories.Http.PUT("repos/%s/%s/automated-security-fixes", pathParams, queries, body)
end

function Repositories.disableAutomatedSecurityFixes(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/automated-security-fixes", pathParams, queries, body)
end

function Repositories.listRepositoryContributors(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/contributors", pathParams, queries, body)
end

function Repositories.createARepositoryDispatchEvent(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/dispatches", pathParams, queries, body)
end

function Repositories.listRepositoryLanguages(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/languages", pathParams, queries, body)
end

function Repositories.listRepositoryTags(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/tags", pathParams, queries, body)
end

function Repositories.listRepositoryTeams(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/teams", pathParams, queries, body)
end

function Repositories.getAllRepositoryTopics(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/topics", pathParams, queries, body)
end

function Repositories.replaceAllRepositoryTopics(pathParams, queries, body)
	return Repositories.Http.PUT("repos/%s/%s/topics", pathParams, queries, body)
end

function Repositories.transferARepository(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/transfer", pathParams, queries, body)
end

function Repositories.checkIfVulnerabilityAlertsAreEnabledForARepository(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/vulnerability-alerts", pathParams, queries, body)
end

function Repositories.enableVulnerabilityAlerts(pathParams, queries, body)
	return Repositories.Http.PUT("repos/%s/%s/vulnerability-alerts", pathParams, queries, body)
end

function Repositories.disableVulnerabilityAlerts(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/vulnerability-alerts", pathParams, queries, body)
end

function Repositories.createARepositoryUsingATemplate(pathParams, queries, body)
	return Repositories.Http.POST("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.listPublicRepositories(pathParams, queries, body)
	return Repositories.Http.GET("repositories", pathParams, queries, body)
end

function Repositories.listRepositoriesForTheAuthenticatedUser(pathParams, queries, body)
	return Repositories.Http.GET("user/repos", pathParams, queries, body)
end

function Repositories.createARepositoryForTheAuthenticatedUser(pathParams, queries, body)
	return Repositories.Http.POST("user/repos", pathParams, queries, body)
end

function Repositories.listRepositoriesForAUser(pathParams, queries, body)
	return Repositories.Http.GET("users/%s/repos", pathParams, queries, body)
end

function Repositories.listBranches(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.getABranch(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s", pathParams, queries, body)
end

function Repositories.getBranchProtection(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection", pathParams, queries, body)
end

function Repositories.updateBranchProtection(pathParams, queries, body)
	return Repositories.Http.PUT("repos/%s/%s/branches/%s/protection", pathParams, queries, body)
end

function Repositories.deleteBranchProtection(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection", pathParams, queries, body)
end

function Repositories.getAdminBranchProtection(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection/enforce_admins", pathParams, queries, body)
end

function Repositories.setAdminBranchProtection(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/branches/%s/protection/enforce_admins", pathParams, queries, body)
end

function Repositories.deleteAdminBranchProtection(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection/enforce_admins", pathParams, queries, body)
end

function Repositories.getPullRequestReviewProtection(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection/required_pull_request_reviews", pathParams, queries, body)
end

function Repositories.updatePullRequestReviewProtection(pathParams, queries, body)
	return Repositories.Http.PATCH("repos/%s/%s/branches/%s/protection/required_pull_request_reviews", pathParams, queries, body)
end

function Repositories.deletePullRequestReviewProtection(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection/required_pull_request_reviews", pathParams, queries, body)
end

function Repositories.getCommitSignatureProtection(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection/required_signatures", pathParams, queries, body)
end

function Repositories.createCommitSignatureProtection(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/branches/%s/protection/required_signatures", pathParams, queries, body)
end

function Repositories.deleteCommitSignatureProtection(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection/required_signatures", pathParams, queries, body)
end

function Repositories.getStatusChecksProtection(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection/required_status_checks", pathParams, queries, body)
end

function Repositories.updateStatusCheckProtection(pathParams, queries, body)
	return Repositories.Http.PATCH("repos/%s/%s/branches/%s/protection/required_status_checks", pathParams, queries, body)
end

function Repositories.removeStatusCheckProtection(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection/required_status_checks", pathParams, queries, body)
end

function Repositories.getAllStatusCheckContexts(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection/required_status_checks/contexts", pathParams, queries, body)
end

function Repositories.addStatusCheckContexts(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/branches/%s/protection/required_status_checks/contexts", pathParams, queries, body)
end

function Repositories.setStatusCheckContexts(pathParams, queries, body)
	return Repositories.Http.PUT("repos/%s/%s/branches/%s/protection/required_status_checks/contexts", pathParams, queries, body)
end

function Repositories.removeStatusCheckContexts(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection/required_status_checks/contexts", pathParams, queries, body)
end

function Repositories.getAccessRestrictions(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection/restrictions", pathParams, queries, body)
end

function Repositories.deleteAccessRestrictions(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection/restrictions", pathParams, queries, body)
end

function Repositories.getAppsWithAccessToTheProtectedBranch(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection/restrictions/apps", pathParams, queries, body)
end

function Repositories.addAppAccessRestrictions()
	return Repositories.Http.POST("repos/%s/%s/branches/%s/protection/restrictions/apps", pathParams, queries, body)
end

function Repositories.setAppAccessRestrictions()
	return Repositories.Http.PUT("repos/%s/%s/branches/%s/protection/restrictions/apps", pathParams, queries, body)
end

function Repositories.removeAppAccessRestrictions()
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection/restrictions/apps", pathParams, queries, body)
end

function Repositories.getTeamsWithAccessToTheProtectedBranch(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection/restrictions/teams", pathParams, queries, body)
end

function Repositories.addTeamAccessRestrictions()
	return Repositories.Http.POST("repos/%s/%s/branches/%s/protection/restrictions/teams", pathParams, queries, body)
end

function Repositories.setTeamAccessRestrictions()
	return Repositories.Http.PUT("repos/%s/%s/branches/%s/protection/restrictions/teams", pathParams, queries, body)
end

function Repositories.removeTeamAccessRestrictions()
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection/restrictions/teams", pathParams, queries, body)
end

function Repositories.getUsersWithAccessToTheProtectedBranch(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/branches/%s/protection/restrictions/users", pathParams, queries, body)
end

function Repositories.addUserAccessRestrictions()
	return Repositories.Http.POST("repos/%s/%s/branches/%s/protection/restrictions/users", pathParams, queries, body)
end

function Repositories.setUserAccessRestrictions()
	return Repositories.Http.PUT("repos/%s/%s/branches/%s/protection/restrictions/users", pathParams, queries, body)
end

function Repositories.removeUserAccessRestrictions()
	return Repositories.Http.DELETE("repos/%s/%s/branches/%s/protection/restrictions/users", pathParams, queries, body)
end

function Repositories.listRepositoryCollaborators(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/collaborators", pathParams, queries, body)
end

function Repositories.checkIfAUserIsARepositoryCollaborator(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/collaborators/%s", pathParams, queries, body)
end

function Repositories.addARepositoryCollaborator(pathParams, queries, body)
	return Repositories.Http.PUT("repos/%s/%s/collaborators/%s", pathParams, queries, body)
end

function Repositories.removeARepositoryCollaborator(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/collaborators/%s", pathParams, queries, body)
end

function Repositories.getRepositoryPermissionsForAUser(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/collaborators/%s/permission", pathParams, queries, body)
end

function Repositories.listCommitCommentsForARepository(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/comments", pathParams, queries, body)
end

function Repositories.getACommitComment(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/comments/%s", pathParams, queries, body)
end

function Repositories.updateACommitComment(pathParams, queries, body)
	return Repositories.Http.PATCH("repos/%s/%s/comments/%s", pathParams, queries, body)
end

function Repositories.deleteACommitComment(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/comments/%s", pathParams, queries, body)
end

function Repositories.listCommitComments(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.createACommitComment(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/commits/%s/comments", pathParams, queries, body)
end

function Repositories.listCommits()
	return Repositories.Http.GET("repos/%s/%s/commits", pathParams, queries, body)
end

function Repositories.listBranchesForHeadCommit(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/commits/%s/branches-where-head", pathParams, queries, body)
end

function Repositories.listPullRequestsAssociatedWithACommit(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/commits/%s/pulls", pathParams, queries, body)
end

function Repositories.getACommit(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.compareTwoCommits()
	return Repositories.Http.GET("repos/%s/%s/compare/%s...%s", pathParams, queries, body)
end

function Repositories.getCommunityProfileMetrics(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/community/profile", pathParams, queries, body)
end

function Repositories.getRepositoryContent(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/contents/%s", pathParams, queries, body)
end

function Repositories.createOrUpdateFileContents(pathParams, queries, body)
	return Repositories.Http.PUT("repos/%s/%s/contents/%s", pathParams, queries, body)
end

function Repositories.deleteAFile(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/contents/%s", pathParams, queries, body)
end

function Repositories.getARepositoryReadme(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/contents/%s", pathParams, queries, body)
end

function Repositories.downloadARepositoryArchiveTar(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/tarball/%s", pathParams, queries, body)
end

function Repositories.downloadARepositoryArchiveZip(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/zipball/%s", pathParams, queries, body)
end

function Repositories.listDeployKeys(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/keys", pathParams, queries, body)
end

function Repositories.createADeployKey(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/keys", pathParams, queries, body)
end

function Repositories.getADeployKey(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/keys/%s", pathParams, queries, body)
end

function Repositories.deleteADeployKey(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/keys/%s", pathParams, queries, body)
end

function Repositories.listDeployments(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/deployments", pathParams, queries, body)
end

function Repositories.createADeployment(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.getADeployment(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.deleteADeployment(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/deployments/%s", pathParams, queries, body)
end

function Repositories.listDeploymentStatuses(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/deployments/%s/statuses", pathParams, queries, body)
end

function Repositories.createADeploymentStatus(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/deployments/%s", pathParams, queries, body)
end

function Repositories.getADeploymentStatus(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/deployments/%s/statuses/%s", pathParams, queries, body)
end

function Repositories.listForks(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/forks", pathParams, queries, body)
end

function Repositories.createAFork(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/forks", pathParams, queries, body)
end

function Repositories.listRepositoryInvitations(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.updateARepositoryInvitation(pathParams, queries, body)
	return Repositories.Http.PATCH("repos/%s/%s/invitations/%s", pathParams, queries, body)
end

function Repositories.deleteARepositoryInvitation(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/invitations/%s", pathParams, queries, body)
end

function Repositories.listRepositoryInvitationsForTheAuthenticatedUser(pathParams, queries, body)
	return Repositories.Http.GET("user/repository_invitations", pathParams, queries, body)
end

function Repositories.acceptARepositoryInvitation(pathParams, queries, body)
	return Repositories.Http.PATCH("user/repository_invitations/%s", pathParams, queries, body)
end

function Repositories.declineARepositoryInvitation(pathParams, queries, body)
	return Repositories.Http.DELETE("user/repository_invitations/%s", pathParams, queries, body)
end

function Repositories.mergeABranch(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/merges", pathParams, queries, body)
end

function Repositories.getAGithubPagesSite(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/pages", pathParams, queries, body)
end

function Repositories.createAGithubPagesSite(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/pages", pathParams, queries, body)
end

function Repositories.updateInformationAboutAGithubPagesSite(pathParams, queries, body)
	return Repositories.Http.PUT("repos/%s/%s/pages", pathParams, queries, body)
end

function Repositories.deleteAGithubPagesSite(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/pages", pathParams, queries, body)
end

function Repositories.listGithubPagesBuilds(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/pages/builds", pathParams, queries, body)
end

function Repositories.requestAGithubPagesBuild(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/pages/builds", pathParams, queries, body)
end

function Repositories.getLatestPagesBuild(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/pages/builds/latest", pathParams, queries, body)
end

function Repositories.getGithubPagesBuild(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/pages/builds/%s", pathParams, queries, body)
end

function Repositories.listReleases(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/releases", pathParams, queries, body)
end

function Repositories.createARelease(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/releases", pathParams, queries, body)
end

function Repositories.getAReleaseAsset(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/releases/assets/%s", pathParams, queries, body)
end

function Repositories.updateAReleaseAsset(pathParams, queries, body)
	return Repositories.Http.PATCH("repos/%s/%s/releases/assets/%s", pathParams, queries, body)
end

function Repositories.deleteAReleaseAsset(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/releases/assets/%s", pathParams, queries, body)
end

function Repositories.getTheLatestRelease(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/releases/latest", pathParams, queries, body)
end

function Repositories.getAReleaseByTagName(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/releases/tags/%s", pathParams, queries, body)
end

function Repositories.getARelease(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.updateARelease(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.deleteARelease(pathParams, queries, body)
	return Repositories.Http.GET("orgs/%s/repos", pathParams, queries, body)
end

function Repositories.listReleaseAssets(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/releases/%s/assets", pathParams, queries, body)
end

function Repositories.uploadAReleaseAsset(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/releases/%s/assets", pathParams, queries, body)
end

function Repositories.getTheWeeklyCommitActivity(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/stats/code_frequency", pathParams, queries, body)
end

function Repositories.getTheLastYearOfCommitActivity(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/stats/commit_activity", pathParams, queries, body)
end

function Repositories.getAllContributorCommitActivity(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/stats/contributors", pathParams, queries, body)
end

function Repositories.getTheWeeklyCommitCount(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/stats/participation", pathParams, queries, body)
end

function Repositories.getTheHourlyCommitCountForEachDay(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/stats/punch_card", pathParams, queries, body)
end

function Repositories.getTheCombinedStatusForASpecificReference(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/commits/%s/status", pathParams, queries, body)
end

function Repositories.listCommitStatusesForAReference(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/commits/%s/statuses", pathParams, queries, body)
end

function Repositories.createACommitStatus(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/statuses/%s", pathParams, queries, body)
end

function Repositories.getRepositoryClones(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/traffic/clones", pathParams, queries, body)
end

function Repositories.getTopReferralPaths(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/traffic/popular/paths", pathParams, queries, body)
end

function Repositories.getTopReferralSources(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/traffic/popular/referrers", pathParams, queries, body)
end

function Repositories.getPageViews(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/traffic/views", pathParams, queries, body)
end

function Repositories.listRepositoryWebhooks(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/hooks", pathParams, queries, body)
end

function Repositories.createARepositoryWebhook(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/hooks", pathParams, queries, body)
end

function Repositories.getARepositoryWebhook(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/hooks/%s", pathParams, queries, body)
end

function Repositories.updateARepositoryWebhook(pathParams, queries, body)
	return Repositories.Http.PATCH("repos/%s/%s/hooks/%s", pathParams, queries, body)
end

function Repositories.deleteARepositoryWebhook(pathParams, queries, body)
	return Repositories.Http.DELETE("repos/%s/%s/hooks/%s", pathParams, queries, body)
end

function Repositories.getAWebhookConfigurationForARepository(pathParams, queries, body)
	return Repositories.Http.GET("repos/%s/%s/hooks/%s", pathParams, queries, body)
end

function Repositories.updateAWebhookConfigurationForARepository(pathParams, queries, body)
	return Repositories.Http.PATCH("repos/%s/%s/hooks/%s", pathParams, queries, body)
end

function Repositories.pingARepositoryWebhook(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/hooks/%s/pings", pathParams, queries, body)
end

function Repositories.testThePushRepositoryWebhook(pathParams, queries, body)
	return Repositories.Http.POST("repos/%s/%s/hooks/%s/tests", pathParams, queries, body)
end

return Repositories