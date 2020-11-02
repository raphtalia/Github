-- https://docs.github.com/en/free-pro-team@latest/rest/reference/gists

local Gists = {}

function Gists.authentication(parameters)
	return Gists.Http.GET(("https://api.github.com/gists"):format(), parameters)
end

function Gists.listGistsForTheAuthenticatedUser(parameters)
	return Gists.Http.GET(("https://api.github.com/gists"):format(), parameters)
end

function Gists.createAGist(parameters)
	return Gists.Http.GET(("https://api.github.com/gists"):format(), parameters)
end

function Gists.listPublicGists(parameters)
	return Gists.Http.GET(("https://api.github.com/gists/public"):format(), parameters)
end

function Gists.listStarredGists(parameters)
	return Gists.Http.GET(("https://api.github.com/gists/starred"):format(), parameters)
end

function Gists.getAGist(parameters)
	return Gists.Http.GET(("https://api.github.com/gists"):format(), parameters)
end

function Gists.updateAGist(parameters)
	return Gists.Http.GET(("https://api.github.com/gists"):format(), parameters)
end

function Gists.deleteAGist(parameters)
	return Gists.Http.GET(("https://api.github.com/gists"):format(), parameters)
end

function Gists.listGistCommits(gist_id, parameters)
	return Gists.Http.GET(("https://api.github.com/gists/%s/commits"):format(gist_id), parameters)
end

function Gists.listGistForks(gist_id, parameters)
	return Gists.Http.GET(("https://api.github.com/gists/%s/forks"):format(gist_id), parameters)
end

function Gists.forkAGist(gist_id)
	return Gists.Http.POST(("https://api.github.com/gists/%s/forks"):format(gist_id))
end

function Gists.checkIfAGistIsStarred(gist_id)
	return Gists.Http.GET(("https://api.github.com/gists/%s/star"):format(gist_id))
end

function Gists.starAGist(parameters)
	return Gists.Http.GET(("https://api.github.com/gists"):format(), parameters)
end

function Gists.unstarAGist(gist_id)
	return Gists.Http.DELETE(("https://api.github.com/gists/%s/star"):format(gist_id))
end

function Gists.getAGistRevision(gist_id, sha)
	return Gists.Http.GET(("https://api.github.com/gists/%s/%s"):format(gist_id, sha))
end

function Gists.listGistsForAUser(username, parameters)
	return Gists.Http.GET(("https://api.github.com/users/%s/gists"):format(username), parameters)
end

function Gists.listGistComments(gist_id, parameters)
	return Gists.Http.GET(("https://api.github.com/gists/%s/comments"):format(gist_id), parameters)
end

function Gists.createAGistComment(gist_id, body)
	return Gists.Http.POST(("https://api.github.com/gists/%s/comments"):format(gist_id), nil, body)
end

function Gists.getAGistComment(gist_id, comment_id)
	return Gists.Http.GET(("https://api.github.com/gists/%s/comments/%s"):format(gist_id, comment_id))
end

function Gists.updateAGistComment(gist_id, comment_id, body)
	return Gists.Http.PATCH(("https://api.github.com/gists/%s/comments/%s"):format(gist_id, comment_id), nil, body)
end

function Gists.deleteAGistComment(gist_id, comment_id)
	return Gists.Http.DELETE(("https://api.github.com/gists/%s/comments/%s"):format(gist_id, comment_id))
end

return Gists