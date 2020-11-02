-- https://docs.github.com/en/free-pro-team@latest/rest/reference/repos#list-organization-repositories

local Repositories = {}

function Repositories.listOrganizationRepositories(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.createAnOrganizationRepository(org, body)
	return Repositories.Http:POST(("https://api.github.com/orgs/%s/repos"):format(org), body)
end

function Repositories.getARepository(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.updateARepository(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.deleteARepository(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.enableAutomatedSecurityFixes(owner, repo)
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/automated-security-fixes"):format(owner, repo))
end

function Repositories.disableAutomatedSecurityFixes(owner, repo)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/automated-security-fixes"):format(owner, repo))
end

function Repositories.listRepositoryContributors(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/contributors"):format(owner, repo), parameters)
end

function Repositories.createARepositoryDispatchEvent(owner, repo, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/dispatches"):format(owner, repo), body)
end

function Repositories.listRepositoryLanguages(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/languages"):format(owner, repo))
end

function Repositories.listRepositoryTags(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/tags"):format(owner, repo), parameters)
end

function Repositories.listRepositoryTeams(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/teams"):format(owner, repo), parameters)
end

function Repositories.getAllRepositoryTopics(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/topics"):format(owner, repo))
end

function Repositories.replaceAllRepositoryTopics(owner, repo, body)
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/topics"):format(owner, repo), body)
end

function Repositories.transferARepository(owner, repo, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/transfer"):format(owner, repo), body)
end

function Repositories.checkIfVulnerabilityAlertsAreEnabledForARepository(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/vulnerability-alerts"):format(owner, repo))
end

function Repositories.enableVulnerabilityAlerts(owner, repo)
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/vulnerability-alerts"):format(owner, repo))
end

function Repositories.disableVulnerabilityAlerts(owner, repo)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/vulnerability-alerts"):format(owner, repo))
end

function Repositories.createARepositoryUsingATemplate(org, body)
	return Repositories.Http:POST(("https://api.github.com/orgs/%s/repos"):format(org), body)
end

function Repositories.listPublicRepositories(parameters)
	return Repositories.Http:GET(("https://api.github.com/repositories"):format(), parameters)
end

function Repositories.listRepositoriesForTheAuthenticatedUser(parameters)
	return Repositories.Http:GET(("https://api.github.com/user/repos"):format(), parameters)
end

function Repositories.createARepositoryForTheAuthenticatedUser(body)
	return Repositories.Http:POST(("https://api.github.com/user/repos"):format(), body)
end

function Repositories.listRepositoriesForAUser(username, parameters)
	return Repositories.Http:GET(("https://api.github.com/users/%s/repos"):format(username), parameters)
end

function Repositories.listBranches(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.getABranch(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s"):format(owner, repo, branch))
end

function Repositories.getBranchProtection(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection"):format(owner, repo, branch))
end

function Repositories.updateBranchProtection(owner, repo, branch, body)
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/branches/%s/protection"):format(owner, repo, branch), body)
end

function Repositories.deleteBranchProtection(owner, repo, branch)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection"):format(owner, repo, branch))
end

function Repositories.getAdminBranchProtection(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection/enforce_admins"):format(owner, repo, branch))
end

function Repositories.setAdminBranchProtection(owner, repo, branch)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/branches/%s/protection/enforce_admins"):format(owner, repo, branch))
end

function Repositories.deleteAdminBranchProtection(owner, repo, branch)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection/enforce_admins"):format(owner, repo, branch))
end

function Repositories.getPullRequestReviewProtection(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_pull_request_reviews"):format(owner, repo, branch))
end

function Repositories.updatePullRequestReviewProtection(owner, repo, branch, body)
	return Repositories.Http:PATCH(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_pull_request_reviews"):format(owner, repo, branch), body)
end

function Repositories.deletePullRequestReviewProtection(owner, repo, branch)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_pull_request_reviews"):format(owner, repo, branch))
end

function Repositories.getCommitSignatureProtection(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_signatures"):format(owner, repo, branch))
end

function Repositories.createCommitSignatureProtection(owner, repo, branch)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_signatures"):format(owner, repo, branch))
end

function Repositories.deleteCommitSignatureProtection(owner, repo, branch)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_signatures"):format(owner, repo, branch))
end

function Repositories.getStatusChecksProtection(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_status_checks"):format(owner, repo, branch))
end

function Repositories.updateStatusCheckProtection(owner, repo, branch, body)
	return Repositories.Http:PATCH(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_status_checks"):format(owner, repo, branch), body)
end

function Repositories.removeStatusCheckProtection(owner, repo, branch)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_status_checks"):format(owner, repo, branch))
end

function Repositories.getAllStatusCheckContexts(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_status_checks/contexts"):format(owner, repo, branch))
end

function Repositories.addStatusCheckContexts(owner, repo, branch)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_status_checks/contexts"):format(owner, repo, branch))
end

function Repositories.setStatusCheckContexts(owner, repo, branch)
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_status_checks/contexts"):format(owner, repo, branch))
end

function Repositories.removeStatusCheckContexts(owner, repo, branch)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection/required_status_checks/contexts"):format(owner, repo, branch))
end

function Repositories.getAccessRestrictions(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions"):format(owner, repo, branch))
end

function Repositories.deleteAccessRestrictions(owner, repo, branch)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions"):format(owner, repo, branch))
end

function Repositories.getAppsWithAccessToTheProtectedBranch(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/apps"):format(owner, repo, branch))
end

function Repositories.addAppAccessRestrictions()
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/apps"):format())
end

function Repositories.setAppAccessRestrictions()
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/apps"):format())
end

function Repositories.removeAppAccessRestrictions()
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/apps"):format())
end

function Repositories.getTeamsWithAccessToTheProtectedBranch(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/teams"):format(owner, repo, branch))
end

function Repositories.addTeamAccessRestrictions()
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/teams"):format())
end

function Repositories.setTeamAccessRestrictions()
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/teams"):format())
end

function Repositories.removeTeamAccessRestrictions()
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/teams"):format())
end

function Repositories.getUsersWithAccessToTheProtectedBranch(owner, repo, branch)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/users"):format(owner, repo, branch))
end

function Repositories.addUserAccessRestrictions()
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/users"):format())
end

function Repositories.setUserAccessRestrictions()
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/users"):format())
end

function Repositories.removeUserAccessRestrictions()
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/branches/%s/protection/restrictions/users"):format())
end

function Repositories.listRepositoryCollaborators(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/collaborators"):format(owner, repo), parameters)
end

function Repositories.checkIfAUserIsARepositoryCollaborator(owner, repo, username)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/collaborators/%s"):format(owner, repo, username))
end

function Repositories.addARepositoryCollaborator(owner, repo, username, body)
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/collaborators/%s"):format(owner, repo, username), body)
end

function Repositories.removeARepositoryCollaborator(owner, repo, username)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/collaborators/%s"):format(owner, repo, username))
end

function Repositories.getRepositoryPermissionsForAUser(owner, repo, username)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/collaborators/%s/permission"):format(owner, repo, username))
end

function Repositories.listCommitCommentsForARepository(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/comments"):format(owner, repo), parameters)
end

function Repositories.getACommitComment(owner, repo, comment_id)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/comments/%s"):format(owner, repo, comment_id))
end

function Repositories.updateACommitComment(owner, repo, comment_id, body)
	return Repositories.Http:PATCH(("https://api.github.com/repos/%s/%s/comments/%s"):format(owner, repo, comment_id), body)
end

function Repositories.deleteACommitComment(owner, repo, comment_id)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/comments/%s"):format(owner, repo, comment_id))
end

function Repositories.listCommitComments(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.createACommitComment(owner, repo, commit_sha, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/commits/%s/comments"):format(owner, repo, commit_sha), body)
end

function Repositories.listCommits()
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/commits"):format())
end

function Repositories.listBranchesForHeadCommit(owner, repo, commit_sha)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/commits/%s/branches-where-head"):format(owner, repo, commit_sha))
end

function Repositories.listPullRequestsAssociatedWithACommit(owner, repo, commit_sha, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/commits/%s/pulls"):format(owner, repo, commit_sha), parameters)
end

function Repositories.getACommit(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.compareTwoCommits()
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/compare/%s...%s"):format())
end

function Repositories.getCommunityProfileMetrics(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/community/profile"):format(owner, repo))
end

function Repositories.getRepositoryContent(owner, repo, path, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/contents/%s"):format(owner, repo, path), parameters)
end

function Repositories.createOrUpdateFileContents(owner, repo, path, body)
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/contents/%s"):format(owner, repo, path), body)
end

function Repositories.deleteAFile(owner, repo, path, body)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/contents/%s"):format(owner, repo, path), body)
end

function Repositories.getARepositoryReadme(owner, repo, path, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/contents/%s"):format(owner, repo, path), parameters)
end

function Repositories.downloadARepositoryArchiveTar(owner, repo, ref)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/tarball/%s"):format(owner, repo, ref))
end

function Repositories.downloadARepositoryArchiveZip(owner, repo, ref)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/zipball/%s"):format(owner, repo, ref))
end

function Repositories.listDeployKeys(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/keys"):format(owner, repo), parameters)
end

function Repositories.createADeployKey(owner, repo, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/keys"):format(owner, repo), body)
end

function Repositories.getADeployKey(owner, repo, key_id)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/keys/%s"):format(owner, repo, key_id))
end

function Repositories.deleteADeployKey(owner, repo, key_id)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/keys/%s"):format(owner, repo, key_id))
end

function Repositories.listDeployments(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/deployments"):format(owner, repo), parameters)
end

function Repositories.createADeployment(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.getADeployment(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.deleteADeployment(owner, repo, deployment_id)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/deployments/%s"):format(owner, repo, deployment_id))
end

function Repositories.listDeploymentStatuses(owner, repo, deployment_id, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/deployments/%s/statuses"):format(owner, repo, deployment_id), parameters)
end

function Repositories.createADeploymentStatus(owner, repo, deployment_id)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/deployments/%s"):format(owner, repo, deployment_id))
end

function Repositories.getADeploymentStatus(owner, repo, deployment_id, status_id)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/deployments/%s/statuses/%s"):format(owner, repo, deployment_id, status_id))
end

function Repositories.listForks(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/forks"):format(owner, repo), parameters)
end

function Repositories.createAFork(owner, repo, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/forks"):format(owner, repo), body)
end

function Repositories.listRepositoryInvitations(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.updateARepositoryInvitation(owner, repo, invitation_id, body)
	return Repositories.Http:PATCH(("https://api.github.com/repos/%s/%s/invitations/%s"):format(owner, repo, invitation_id), body)
end

function Repositories.deleteARepositoryInvitation(owner, repo, invitation_id)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/invitations/%s"):format(owner, repo, invitation_id))
end

function Repositories.listRepositoryInvitationsForTheAuthenticatedUser(parameters)
	return Repositories.Http:GET(("https://api.github.com/user/repository_invitations"):format(), parameters)
end

function Repositories.acceptARepositoryInvitation(invitation_id)
	return Repositories.Http:PATCH(("https://api.github.com/user/repository_invitations/%s"):format(invitation_id))
end

function Repositories.declineARepositoryInvitation(invitation_id)
	return Repositories.Http:DELETE(("https://api.github.com/user/repository_invitations/%s"):format(invitation_id))
end

function Repositories.mergeABranch(owner, repo, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/merges"):format(owner, repo), body)
end

function Repositories.getAGithubPagesSite(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/pages"):format(owner, repo))
end

function Repositories.createAGithubPagesSite(owner, repo, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/pages"):format(owner, repo), body)
end

function Repositories.updateInformationAboutAGithubPagesSite(owner, repo, body)
	return Repositories.Http:PUT(("https://api.github.com/repos/%s/%s/pages"):format(owner, repo), body)
end

function Repositories.deleteAGithubPagesSite(owner, repo)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/pages"):format(owner, repo))
end

function Repositories.listGithubPagesBuilds(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/pages/builds"):format(owner, repo), parameters)
end

function Repositories.requestAGithubPagesBuild(owner, repo)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/pages/builds"):format(owner, repo))
end

function Repositories.getLatestPagesBuild(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/pages/builds/latest"):format(owner, repo))
end

function Repositories.getGithubPagesBuild(owner, repo, build_id)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/pages/builds/%s"):format(owner, repo, build_id))
end

function Repositories.listReleases(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/releases"):format(owner, repo), parameters)
end

function Repositories.createARelease(owner, repo, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/releases"):format(owner, repo), body)
end

function Repositories.getAReleaseAsset(owner, repo, asset_id)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/releases/assets/%s"):format(owner, repo, asset_id))
end

function Repositories.updateAReleaseAsset(owner, repo, asset_id, body)
	return Repositories.Http:PATCH(("https://api.github.com/repos/%s/%s/releases/assets/%s"):format(owner, repo, asset_id), body)
end

function Repositories.deleteAReleaseAsset(owner, repo, asset_id)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/releases/assets/%s"):format(owner, repo, asset_id))
end

function Repositories.getTheLatestRelease(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/releases/latest"):format(owner, repo))
end

function Repositories.getAReleaseByTagName(owner, repo, tag)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/releases/tags/%s"):format(owner, repo, tag))
end

function Repositories.getARelease(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.updateARelease(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.deleteARelease(org, parameters)
	return Repositories.Http:GET(("https://api.github.com/orgs/%s/repos"):format(org), parameters)
end

function Repositories.listReleaseAssets(owner, repo, release_id, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/releases/%s/assets"):format(owner, repo, release_id), parameters)
end

function Repositories.uploadAReleaseAsset(owner, repo, release_id, parameters)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/releases/%s/assets"):format(owner, repo, release_id), parameters)
end

function Repositories.getTheWeeklyCommitActivity(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/stats/code_frequency"):format(owner, repo))
end

function Repositories.getTheLastYearOfCommitActivity(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/stats/commit_activity"):format(owner, repo))
end

function Repositories.getAllContributorCommitActivity(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/stats/contributors"):format(owner, repo))
end

function Repositories.getTheWeeklyCommitCount(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/stats/participation"):format(owner, repo))
end

function Repositories.getTheHourlyCommitCountForEachDay(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/stats/punch_card"):format(owner, repo))
end

function Repositories.getTheCombinedStatusForASpecificReference(owner, repo, ref)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/commits/%s/status"):format(owner, repo, ref))
end

function Repositories.listCommitStatusesForAReference(owner, repo, ref, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/commits/%s/statuses"):format(owner, repo, ref), parameters)
end

function Repositories.createACommitStatus(owner, repo, sha, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/statuses/%s"):format(owner, repo, sha), body)
end

function Repositories.getRepositoryClones(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/traffic/clones"):format(owner, repo), parameters)
end

function Repositories.getTopReferralPaths(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/traffic/popular/paths"):format(owner, repo))
end

function Repositories.getTopReferralSources(owner, repo)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/traffic/popular/referrers"):format(owner, repo))
end

function Repositories.getPageViews(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/traffic/views"):format(owner, repo), parameters)
end

function Repositories.listRepositoryWebhooks(owner, repo, parameters)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/hooks"):format(owner, repo), parameters)
end

function Repositories.createARepositoryWebhook(owner, repo, body)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/hooks"):format(owner, repo), body)
end

function Repositories.getARepositoryWebhook(owner, repo, hook_id)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/hooks/%s"):format(owner, repo, hook_id))
end

function Repositories.updateARepositoryWebhook(owner, repo, hook_id, body)
	return Repositories.Http:PATCH(("https://api.github.com/repos/%s/%s/hooks/%s"):format(owner, repo, hook_id), body)
end

function Repositories.deleteARepositoryWebhook(owner, repo, hook_id)
	return Repositories.Http:DELETE(("https://api.github.com/repos/%s/%s/hooks/%s"):format(owner, repo, hook_id))
end

function Repositories.getAWebhookConfigurationForARepository(owner, repo, hook_id)
	return Repositories.Http:GET(("https://api.github.com/repos/%s/%s/hooks/%s"):format(owner, repo, hook_id))
end

function Repositories.updateAWebhookConfigurationForARepository(owner, repo, hook_id, body)
	return Repositories.Http:PATCH(("https://api.github.com/repos/%s/%s/hooks/%s"):format(owner, repo, hook_id), body)
end

function Repositories.pingARepositoryWebhook(owner, repo, hook_id)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/hooks/%s/pings"):format(owner, repo, hook_id))
end

function Repositories.testThePushRepositoryWebhook(owner, repo, hook_id)
	return Repositories.Http:POST(("https://api.github.com/repos/%s/%s/hooks/%s/tests"):format(owner, repo, hook_id))
end

return Repositories