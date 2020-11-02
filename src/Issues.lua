-- https://docs.github.com/en/free-pro-team@latest/rest/reference/issues

local Issues = {}

function Issues.listIssuesAssignedToTheAuthenticatedUser(pathParams, queries, body)
	return Issues.Http.GET("issues", pathParams, queries, body)
end

function Issues.listOrganizationIssuesAssignedToTheAuthenticatedUser(pathParams, queries, body)
	return Issues.Http.GET("orgs/%s/issues", pathParams, queries, body)
end

function Issues.listRepositoryIssues(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/issues", pathParams, queries, body)
end

function Issues.createAnIssue(pathParams, queries, body)
	return Issues.Http.GET("issues", pathParams, queries, body)
end

function Issues.getAnIssue(pathParams, queries, body)
	return Issues.Http.GET("issues", pathParams, queries, body)
end

function Issues.updateAnIssue(pathParams, queries, body)
	return Issues.Http.GET("issues", pathParams, queries, body)
end

function Issues.lockAnIssue(pathParams, queries, body)
	return Issues.Http.GET("issues", pathParams, queries, body)
end

function Issues.unlockAnIssue(pathParams, queries, body)
	return Issues.Http.DELETE("repos/%s/%s/issues/%s/lock", pathParams, queries, body)
end

function Issues.listUserAccountIssuesAssignedToTheAuthenticatedUser(pathParams, queries, body)
	return Issues.Http.GET("user/issues", pathParams, queries, body)
end

function Issues.listAssignees(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/assignees", pathParams, queries, body)
end

function Issues.checkIfAUserCanBeAssigned(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/assignees/%s", pathParams, queries, body)
end

function Issues.addAssigneesToAnIssue(pathParams, queries, body)
	return Issues.Http.POST("repos/%s/%s/issues/%s/assignees", pathParams, queries, body)
end

function Issues.removeAssigneesFromAnIssue(pathParams, queries, body)
	return Issues.Http.DELETE("repos/%s/%s/issues/%s/assignees", pathParams, queries, body)
end

function Issues.listIssueCommentsForARepository(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/issues/comments", pathParams, queries, body)
end

function Issues.getAnIssueComment(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/issues/comments/%s", pathParams, queries, body)
end

function Issues.updateAnIssueComment(pathParams, queries, body)
	return Issues.Http.PATCH("repos/%s/%s/issues/comments/%s", pathParams, queries, body)
end

function Issues.deleteAnIssueComment(pathParams, queries, body)
	return Issues.Http.DELETE("repos/%s/%s/issues/comments/%s", pathParams, queries, body)
end

function Issues.listIssueComments(pathParams, queries, body)
	return Issues.Http.GET("issues", pathParams, queries, body)
end

function Issues.createAnIssueComment(pathParams, queries, body)
	return Issues.Http.POST("repos/%s/%s/issues/%s/comments", pathParams, queries, body)
end

function Issues.listIssueEventsForARepository(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/issues/events", pathParams, queries, body)
end

function Issues.getAnIssueEvent(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/issues/events/%s", pathParams, queries, body)
end

function Issues.listIssueEvents(pathParams, queries, body)
	return Issues.Http.GET("issues", pathParams, queries, body)
end

function Issues.listLabelsForAnIssue(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/issues/%s/labels", pathParams, queries, body)
end

function Issues.addLabelsToAnIssue(pathParams, queries, body)
	return Issues.Http.POST("repos/%s/%s/issues/%s/labels", pathParams, queries, body)
end

function Issues.setLabelsForAnIssue(pathParams, queries, body)
	return Issues.Http.PUT("repos/%s/%s/issues/%s/labels", pathParams, queries, body)
end

function Issues.removeAllLabelsFromAnIssue(pathParams, queries, body)
	return Issues.Http.DELETE("repos/%s/%s/issues/%s/labels", pathParams, queries, body)
end

function Issues.removeALabelFromAnIssue(pathParams, queries, body)
	return Issues.Http.DELETE("repos/%s/%s/issues/%s/labels/%s", pathParams, queries, body)
end

function Issues.listLabelsForARepository(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/labels", pathParams, queries, body)
end

function Issues.createALabel(pathParams, queries, body)
	return Issues.Http.POST("repos/%s/%s/labels", pathParams, queries, body)
end

function Issues.getALabel(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/labels/%s", pathParams, queries, body)
end

function Issues.updateALabel(pathParams, queries, body)
	return Issues.Http.PATCH("repos/%s/%s/labels/%s", pathParams, queries, body)
end

function Issues.deleteALabel(pathParams, queries, body)
	return Issues.Http.DELETE("repos/%s/%s/labels/%s", pathParams, queries, body)
end

function Issues.listLabelsForIssuesInAMilestone(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/milestones/%s/labels", pathParams, queries, body)
end

function Issues.listMilestones(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/milestones", pathParams, queries, body)
end

function Issues.createAMilestone(pathParams, queries, body)
	return Issues.Http.POST("repos/%s/%s/milestones", pathParams, queries, body)
end

function Issues.getAMilestone(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/milestones/%s", pathParams, queries, body)
end

function Issues.updateAMilestone(pathParams, queries, body)
	return Issues.Http.PATCH("repos/%s/%s/milestones/%s", pathParams, queries, body)
end

function Issues.deleteAMilestone(pathParams, queries, body)
	return Issues.Http.DELETE("repos/%s/%s/milestones/%s", pathParams, queries, body)
end

function Issues.listTimelineEventsForAnIssue(pathParams, queries, body)
	return Issues.Http.GET("repos/%s/%s/issues/%s/timeline", pathParams, queries, body)
end

return Issues