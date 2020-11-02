-- https://docs.github.com/en/free-pro-team@latest/rest/reference/issues

local Issues = {}

function Issues.listIssuesAssignedToTheAuthenticatedUser(parameters)
	return Issues.Http:GET(("https://api.github.com/issues"):format(), parameters)
end

function Issues.listOrganizationIssuesAssignedToTheAuthenticatedUser(org, parameters)
	return Issues.Http:GET(("https://api.github.com/orgs/%s/issues"):format(org), parameters)
end

function Issues.listRepositoryIssues(owner, repo, parameters)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/issues"):format(owner, repo), parameters)
end

function Issues.createAnIssue(parameters)
	return Issues.Http:GET(("https://api.github.com/issues"):format(), parameters)
end

function Issues.getAnIssue(parameters)
	return Issues.Http:GET(("https://api.github.com/issues"):format(), parameters)
end

function Issues.updateAnIssue(parameters)
	return Issues.Http:GET(("https://api.github.com/issues"):format(), parameters)
end

function Issues.lockAnIssue(parameters)
	return Issues.Http:GET(("https://api.github.com/issues"):format(), parameters)
end

function Issues.unlockAnIssue(owner, repo, issue_number)
	return Issues.Http:DELETE(("https://api.github.com/repos/%s/%s/issues/%s/lock"):format(owner, repo, issue_number))
end

function Issues.listUserAccountIssuesAssignedToTheAuthenticatedUser(parameters)
	return Issues.Http:GET(("https://api.github.com/user/issues"):format(), parameters)
end

function Issues.listAssignees(owner, repo, parameters)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/assignees"):format(owner, repo), parameters)
end

function Issues.checkIfAUserCanBeAssigned(owner, repo, assignee)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/assignees/%s"):format(owner, repo, assignee))
end

function Issues.addAssigneesToAnIssue(owner, repo, issue_number, body)
	return Issues.Http:POST(("https://api.github.com/repos/%s/%s/issues/%s/assignees"):format(owner, repo, issue_number), body)
end

function Issues.removeAssigneesFromAnIssue(owner, repo, issue_number, body)
	return Issues.Http:DELETE(("https://api.github.com/repos/%s/%s/issues/%s/assignees"):format(owner, repo, issue_number), body)
end

function Issues.listIssueCommentsForARepository(owner, repo, parameters)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/issues/comments"):format(owner, repo), parameters)
end

function Issues.getAnIssueComment(owner, repo, comment_id)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/issues/comments/%s"):format(owner, repo, comment_id))
end

function Issues.updateAnIssueComment(owner, repo, comment_id, body)
	return Issues.Http:PATCH(("https://api.github.com/repos/%s/%s/issues/comments/%s"):format(owner, repo, comment_id), body)
end

function Issues.deleteAnIssueComment(owner, repo, comment_id)
	return Issues.Http:DELETE(("https://api.github.com/repos/%s/%s/issues/comments/%s"):format(owner, repo, comment_id))
end

function Issues.listIssueComments(parameters)
	return Issues.Http:GET(("https://api.github.com/issues"):format(), parameters)
end

function Issues.createAnIssueComment(owner, repo, issue_number, body)
	return Issues.Http:POST(("https://api.github.com/repos/%s/%s/issues/%s/comments"):format(owner, repo, issue_number), body)
end

function Issues.listIssueEventsForARepository(owner, repo, parameters)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/issues/events"):format(owner, repo), parameters)
end

function Issues.getAnIssueEvent(owner, repo, event_id)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/issues/events/%s"):format(owner, repo, event_id))
end

function Issues.listIssueEvents(parameters)
	return Issues.Http:GET(("https://api.github.com/issues"):format(), parameters)
end

function Issues.listLabelsForAnIssue(owner, repo, issue_number, parameters)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/issues/%s/labels"):format(owner, repo, issue_number), parameters)
end

function Issues.addLabelsToAnIssue(owner, repo, issue_number, body)
	return Issues.Http:POST(("https://api.github.com/repos/%s/%s/issues/%s/labels"):format(owner, repo, issue_number), body)
end

function Issues.setLabelsForAnIssue(owner, repo, issue_number, body)
	return Issues.Http:PUT(("https://api.github.com/repos/%s/%s/issues/%s/labels"):format(owner, repo, issue_number), body)
end

function Issues.removeAllLabelsFromAnIssue(owner, repo, issue_number)
	return Issues.Http:DELETE(("https://api.github.com/repos/%s/%s/issues/%s/labels"):format(owner, repo, issue_number))
end

function Issues.removeALabelFromAnIssue(owner, repo, issue_number, name)
	return Issues.Http:DELETE(("https://api.github.com/repos/%s/%s/issues/%s/labels/%s"):format(owner, repo, issue_number, name))
end

function Issues.listLabelsForARepository(owner, repo, parameters)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/labels"):format(owner, repo), parameters)
end

function Issues.createALabel(owner, repo, body)
	return Issues.Http:POST(("https://api.github.com/repos/%s/%s/labels"):format(owner, repo), body)
end

function Issues.getALabel(owner, repo, name)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/labels/%s"):format(owner, repo, name))
end

function Issues.updateALabel(owner, repo, name, body)
	return Issues.Http:PATCH(("https://api.github.com/repos/%s/%s/labels/%s"):format(owner, repo, name), body)
end

function Issues.deleteALabel(owner, repo, name)
	return Issues.Http:DELETE(("https://api.github.com/repos/%s/%s/labels/%s"):format(owner, repo, name))
end

function Issues.listLabelsForIssuesInAMilestone(owner, repo, milestone_number, parameters)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/milestones/%s/labels"):format(owner, repo, milestone_number), parameters)
end

function Issues.listMilestones(owner, repo, parameters)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/milestones"):format(owner, repo), parameters)
end

function Issues.createAMilestone(owner, repo, body)
	return Issues.Http:POST(("https://api.github.com/repos/%s/%s/milestones"):format(owner, repo), body)
end

function Issues.getAMilestone(owner, repo, milestone_number)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/milestones/%s"):format(owner, repo, milestone_number))
end

function Issues.updateAMilestone(owner, repo, milestone_number, body)
	return Issues.Http:PATCH(("https://api.github.com/repos/%s/%s/milestones/%s"):format(owner, repo, milestone_number), body)
end

function Issues.deleteAMilestone(owner, repo, milestone_number)
	return Issues.Http:DELETE(("https://api.github.com/repos/%s/%s/milestones/%s"):format(owner, repo, milestone_number))
end

function Issues.listTimelineEventsForAnIssue(owner, repo, issue_number, parameters)
	return Issues.Http:GET(("https://api.github.com/repos/%s/%s/issues/%s/timeline"):format(owner, repo, issue_number), parameters)
end

return Issues