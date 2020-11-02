-- https://docs.github.com/en/free-pro-team@latest/rest/reference/git
-- https://developer.github.com/v3/git/

local Git = {}

function Git.createABlob(pathParams, queries, body)
	return Git.Http.POST("repos/%s/%s/git/blobs", pathParams, queries, body)
end

function Git.getABlob(pathParams, queries, body)
	return Git.Http.GET("repos/%s/%s/git/blobs/%s", pathParams, queries, body)
end

function Git.createACommit()
	return Git.Http.POST("repos/%s/%s/git/commits", pathParams, queries, body)
end

function Git.getACommit()
	return Git.Http.GET("repos/%s/%s/git/commits/%s", pathParams, queries, body)
end

function Git.listMatchingReferences(pathParams, queries, body)
	return Git.Http.GET("repos/%s/%s/git/matching-refs/%s", pathParams, queries, body)
end

function Git.getAReference(pathParams, queries, body)
	return Git.Http.GET("repos/%s/%s/git/ref/%s", pathParams, queries, body)
end

function Git.createAReference(pathParams, queries, body)
	return Git.Http.POST("repos/%s/%s/git/refs", pathParams, queries, body)
end

function Git.updateAReference(pathParams, queries, body)
	return Git.Http.PATCH("repos/%s/%s/git/refs/%s", pathParams, queries, body)
end

function Git.deleteAReference(pathParams, queries, body)
	return Git.Http.DELETE("repos/%s/%s/git/refs/%s", pathParams, queries, body)
end

function Git.createATagObject()
	return Git.Http.POST("repos/%s/%s/git/tags", pathParams, queries, body)
end

function Git.getATag()
	return Git.Http.GET("repos/%s/%s/git/tags/%s", pathParams, queries, body)
end

function Git.createATree(pathParams, queries, body)
	return Git.Http.POST("repos/%s/%s/git/trees", pathParams, queries, body)
end

function Git.getATree(pathParams, queries, body)
	return Git.Http.GET("repos/%s/%s/git/trees/%s", pathParams, queries, body)
end

return Git