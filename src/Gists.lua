-- https://docs.github.com/en/free-pro-team@latest/rest/reference/gists

local Gists = {}

function Gists.authentication(pathParams, queries, body)
	return Gists.Http.GET("gists", pathParams, queries, body)
end

function Gists.listGistsForTheAuthenticatedUser(pathParams, queries, body)
	return Gists.Http.GET("gists", pathParams, queries, body)
end

function Gists.createAGist(pathParams, queries, body)
	return Gists.Http.GET("gists", pathParams, queries, body)
end

function Gists.listPublicGists(pathParams, queries, body)
	return Gists.Http.GET("gists/public", pathParams, queries, body)
end

function Gists.listStarredGists(pathParams, queries, body)
	return Gists.Http.GET("gists/starred", pathParams, queries, body)
end

function Gists.getAGist(pathParams, queries, body)
	return Gists.Http.GET("gists", pathParams, queries, body)
end

function Gists.updateAGist(pathParams, queries, body)
	return Gists.Http.GET("gists", pathParams, queries, body)
end

function Gists.deleteAGist(pathParams, queries, body)
	return Gists.Http.GET("gists", pathParams, queries, body)
end

function Gists.listGistCommits(pathParams, queries, body)
	return Gists.Http.GET("gists/%s/commits", pathParams, queries, body)
end

function Gists.listGistForks(pathParams, queries, body)
	return Gists.Http.GET("gists/%s/forks", pathParams, queries, body)
end

function Gists.forkAGist(pathParams, queries, body)
	return Gists.Http.POST("gists/%s/forks", pathParams, queries, body)
end

function Gists.checkIfAGistIsStarred(pathParams, queries, body)
	return Gists.Http.GET("gists/%s/star", pathParams, queries, body)
end

function Gists.starAGist(pathParams, queries, body)
	return Gists.Http.GET("gists", pathParams, queries, body)
end

function Gists.unstarAGist(pathParams, queries, body)
	return Gists.Http.DELETE("gists/%s/star", pathParams, queries, body)
end

function Gists.getAGistRevision(pathParams, queries, body)
	return Gists.Http.GET("gists/%s/%s", pathParams, queries, body)
end

function Gists.listGistsForAUser(pathParams, queries, body)
	return Gists.Http.GET("users/%s/gists", pathParams, queries, body)
end

function Gists.listGistComments(pathParams, queries, body)
	return Gists.Http.GET("gists/%s/comments", pathParams, queries, body)
end

function Gists.createAGistComment(pathParams, queries, body)
	return Gists.Http.POST("gists/%s/comments", pathParams, queries, body)
end

function Gists.getAGistComment(pathParams, queries, body)
	return Gists.Http.GET("gists/%s/comments/%s", pathParams, queries, body)
end

function Gists.updateAGistComment(pathParams, queries, body)
	return Gists.Http.PATCH("gists/%s/comments/%s", pathParams, queries, body)
end

function Gists.deleteAGistComment(pathParams, queries, body)
	return Gists.Http.DELETE("gists/%s/comments/%s", pathParams, queries, body)
end

return Gists