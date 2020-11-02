-- https://docs.github.com/en/free-pro-team@latest/rest/reference/git

local Git = {}

function Git.createABlob(owner, repo, body)
	return Git.Http:POST(("https://api.github.com/repos/%s/%s/git/blobs"):format(owner, repo), body)
end

function Git.getABlob(owner, repo, file_sha)
	return Git.Http:GET(("https://api.github.com/repos/%s/%s/git/blobs/%s"):format(owner, repo, file_sha))
end

function Git.createACommit()
	return Git.Http:POST(("https://api.github.com/repos/%s/%s/git/commits"):format())
end

function Git.getACommit()
	return Git.Http:GET(("https://api.github.com/repos/%s/%s/git/commits/%s"):format())
end

function Git.listMatchingReferences(owner, repo, ref, parameters)
	return Git.Http:GET(("https://api.github.com/repos/%s/%s/git/matching-refs/%s"):format(owner, repo, ref), parameters)
end

function Git.getAReference(owner, repo, ref)
	return Git.Http:GET(("https://api.github.com/repos/%s/%s/git/ref/%s"):format(owner, repo, ref))
end

function Git.createAReference(owner, repo, body)
	return Git.Http:POST(("https://api.github.com/repos/%s/%s/git/refs"):format(owner, repo), body)
end

function Git.updateAReference(owner, repo, ref, body)
	return Git.Http:PATCH(("https://api.github.com/repos/%s/%s/git/refs/%s"):format(owner, repo, ref), body)
end

function Git.deleteAReference(owner, repo, ref)
	return Git.Http:DELETE(("https://api.github.com/repos/%s/%s/git/refs/%s"):format(owner, repo, ref))
end

function Git.createATagObject()
	return Git.Http:POST(("https://api.github.com/repos/%s/%s/git/tags"):format())
end

function Git.getATag()
	return Git.Http:GET(("https://api.github.com/repos/%s/%s/git/tags/%s"):format())
end

function Git.createATree(owner, repo, body)
	return Git.Http:POST(("https://api.github.com/repos/%s/%s/git/trees"):format(owner, repo), body)
end

function Git.getATree(owner, repo, tree_sha, parameters)
	return Git.Http:GET(("https://api.github.com/repos/%s/%s/git/trees/%s"):format(owner, repo, tree_sha), parameters)
end

return Git