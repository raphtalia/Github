-- https://docs.github.com/en/free-pro-team@latest/rest/reference/projects

local Projects = {}

function Projects.listOrganizationProjects(org, parameters)
	return Projects.Http:GET(("https://api.github.com/orgs/%s/projects"):format(org), parameters)
end

function Projects.createAnOrganizationProject(org, body)
	return Projects.Http:POST(("https://api.github.com/orgs/%s/projects"):format(org), body)
end

function Projects.getAProject(org, parameters)
	return Projects.Http:GET(("https://api.github.com/orgs/%s/projects"):format(org), parameters)
end

function Projects.updateAProject(project_id, body)
	return Projects.Http:PATCH(("https://api.github.com/projects/%s"):format(project_id), body)
end

function Projects.deleteAProject(org, parameters)
	return Projects.Http:GET(("https://api.github.com/orgs/%s/projects"):format(org), parameters)
end

function Projects.listRepositoryProjects(owner, repo, parameters)
	return Projects.Http:GET(("https://api.github.com/repos/%s/%s/projects"):format(owner, repo), parameters)
end

function Projects.createARepositoryProject(owner, repo, body)
	return Projects.Http:POST(("https://api.github.com/repos/%s/%s/projects"):format(owner, repo), body)
end

function Projects.createAUserProject(body)
	return Projects.Http:POST(("https://api.github.com/user/projects"):format(), body)
end

function Projects.listUserProjects(username, parameters)
	return Projects.Http:GET(("https://api.github.com/users/%s/projects"):format(username), parameters)
end

function Projects.getAProjectCard(card_id)
	return Projects.Http:GET(("https://api.github.com/projects/columns/cards/%s"):format(card_id))
end

function Projects.updateAnExistingProjectCard(card_id, body)
	return Projects.Http:PATCH(("https://api.github.com/projects/columns/cards/%s"):format(card_id), body)
end

function Projects.deleteAProjectCard(card_id)
	return Projects.Http:DELETE(("https://api.github.com/projects/columns/cards/%s"):format(card_id))
end

function Projects.moveAProjectCard(card_id, body)
	return Projects.Http:POST(("https://api.github.com/projects/columns/cards/%s/moves"):format(card_id), body)
end

function Projects.listProjectCards(column_id, parameters)
	return Projects.Http:GET(("https://api.github.com/projects/columns/%s/cards"):format(column_id), parameters)
end

function Projects.createAProjectCard(column_id)
	return Projects.Http:POST(("https://api.github.com/projects/columns/%s/cards"):format(column_id))
end

function Projects.listProjectCollaborators(project_id, parameters)
	return Projects.Http:GET(("https://api.github.com/projects/%s/collaborators"):format(project_id), parameters)
end

function Projects.addProjectCollaborator(project_id, username, body)
	return Projects.Http:PUT(("https://api.github.com/projects/%s/collaborators/%s"):format(project_id, username), body)
end

function Projects.removeUserAsACollaborator(project_id, username)
	return Projects.Http:DELETE(("https://api.github.com/projects/%s/collaborators/%s"):format(project_id, username))
end

function Projects.getProjectPermissionForAUser(project_id, username)
	return Projects.Http:GET(("https://api.github.com/projects/%s/collaborators/%s/permission"):format(project_id, username))
end

function Projects.getAProjectColumn(column_id)
	return Projects.Http:GET(("https://api.github.com/projects/columns/%s"):format(column_id))
end

function Projects.updateAnExistingProjectColumn(column_id, body)
	return Projects.Http:PATCH(("https://api.github.com/projects/columns/%s"):format(column_id), body)
end

function Projects.deleteAProjectColumn(column_id)
	return Projects.Http:DELETE(("https://api.github.com/projects/columns/%s"):format(column_id))
end

function Projects.moveAProjectColumn(column_id, body)
	return Projects.Http:POST(("https://api.github.com/projects/columns/%s/moves"):format(column_id), body)
end

function Projects.listProjectColumns(project_id, parameters)
	return Projects.Http:GET(("https://api.github.com/projects/%s/columns"):format(project_id), parameters)
end

function Projects.createAProjectColumn(project_id, body)
	return Projects.Http:POST(("https://api.github.com/projects/%s/columns"):format(project_id), body)
end

return Projects