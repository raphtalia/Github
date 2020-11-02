-- https://docs.github.com/en/free-pro-team@latest/rest/reference/projects

local Projects = {}

function Projects.listOrganizationProjects(pathParams, queries, body)
	return Projects.Http.GET("orgs/%s/projects", pathParams, queries, body)
end

function Projects.createAnOrganizationProject(pathParams, queries, body)
	return Projects.Http.POST("orgs/%s/projects", pathParams, queries, body)
end

function Projects.getAProject(pathParams, queries, body)
	return Projects.Http.GET("orgs/%s/projects", pathParams, queries, body)
end

function Projects.updateAProject(pathParams, queries, body)
	return Projects.Http.PATCH("projects/%s", pathParams, queries, body)
end

function Projects.deleteAProject(pathParams, queries, body)
	return Projects.Http.GET("orgs/%s/projects", pathParams, queries, body)
end

function Projects.listRepositoryProjects(pathParams, queries, body)
	return Projects.Http.GET("repos/%s/%s/projects", pathParams, queries, body)
end

function Projects.createARepositoryProject(pathParams, queries, body)
	return Projects.Http.POST("repos/%s/%s/projects", pathParams, queries, body)
end

function Projects.createAUserProject(pathParams, queries, body)
	return Projects.Http.POST("user/projects", pathParams, queries, body)
end

function Projects.listUserProjects(pathParams, queries, body)
	return Projects.Http.GET("users/%s/projects", pathParams, queries, body)
end

function Projects.getAProjectCard(pathParams, queries, body)
	return Projects.Http.GET("projects/columns/cards/%s", pathParams, queries, body)
end

function Projects.updateAnExistingProjectCard(pathParams, queries, body)
	return Projects.Http.PATCH("projects/columns/cards/%s", pathParams, queries, body)
end

function Projects.deleteAProjectCard(pathParams, queries, body)
	return Projects.Http.DELETE("projects/columns/cards/%s", pathParams, queries, body)
end

function Projects.moveAProjectCard(pathParams, queries, body)
	return Projects.Http.POST("projects/columns/cards/%s/moves", pathParams, queries, body)
end

function Projects.listProjectCards(pathParams, queries, body)
	return Projects.Http.GET("projects/columns/%s/cards", pathParams, queries, body)
end

function Projects.createAProjectCard(pathParams, queries, body)
	return Projects.Http.POST("projects/columns/%s/cards", pathParams, queries, body)
end

function Projects.listProjectCollaborators(pathParams, queries, body)
	return Projects.Http.GET("projects/%s/collaborators", pathParams, queries, body)
end

function Projects.addProjectCollaborator(pathParams, queries, body)
	return Projects.Http.PUT("projects/%s/collaborators/%s", pathParams, queries, body)
end

function Projects.removeUserAsACollaborator(pathParams, queries, body)
	return Projects.Http.DELETE("projects/%s/collaborators/%s", pathParams, queries, body)
end

function Projects.getProjectPermissionForAUser(pathParams, queries, body)
	return Projects.Http.GET("projects/%s/collaborators/%s/permission", pathParams, queries, body)
end

function Projects.getAProjectColumn(pathParams, queries, body)
	return Projects.Http.GET("projects/columns/%s", pathParams, queries, body)
end

function Projects.updateAnExistingProjectColumn(pathParams, queries, body)
	return Projects.Http.PATCH("projects/columns/%s", pathParams, queries, body)
end

function Projects.deleteAProjectColumn(pathParams, queries, body)
	return Projects.Http.DELETE("projects/columns/%s", pathParams, queries, body)
end

function Projects.moveAProjectColumn(pathParams, queries, body)
	return Projects.Http.POST("projects/columns/%s/moves", pathParams, queries, body)
end

function Projects.listProjectColumns(pathParams, queries, body)
	return Projects.Http.GET("projects/%s/columns", pathParams, queries, body)
end

function Projects.createAProjectColumn(pathParams, queries, body)
	return Projects.Http.POST("projects/%s/columns", pathParams, queries, body)
end

return Projects