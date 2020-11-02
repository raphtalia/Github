-- https://docs.github.com/en/free-pro-team@latest/rest/reference/migrations

local Migrations = {}

function Migrations.listOrganizationMigrations(org, parameters)
	return Migrations.Http.GET(("https://api.github.com/orgs/%s/migrations"):format(org), parameters)
end

function Migrations.startAnOrganizationMigration(org, body)
	return Migrations.Http.POST(("https://api.github.com/orgs/%s/migrations"):format(org), nil, body)
end

function Migrations.getAnOrganizationMigrationStatus(org, migration_id)
	return Migrations.Http.GET(("https://api.github.com/orgs/%s/migrations/%s"):format(org, migration_id))
end

function Migrations.downloadAnOrganizationMigrationArchive(org, migration_id)
	return Migrations.Http.GET(("https://api.github.com/orgs/%s/migrations/%s/archive"):format(org, migration_id))
end

function Migrations.deleteAnOrganizationMigrationArchive(org, migration_id)
	return Migrations.Http.DELETE(("https://api.github.com/orgs/%s/migrations/%s/archive"):format(org, migration_id))
end

function Migrations.unlockAnOrganizationRepository(org, migration_id, repo_name)
	return Migrations.Http.DELETE(("https://api.github.com/orgs/%s/migrations/%s/repos/%s/lock"):format(org, migration_id, repo_name))
end

function Migrations.listRepositoriesInAnOrganizationMigration(org, migration_id, parameters)
	return Migrations.Http.GET(("https://api.github.com/orgs/%s/migrations/%s/repositories"):format(org, migration_id), parameters)
end

function Migrations.getAnImportStatus(owner, repo)
	return Migrations.Http.GET(("https://api.github.com/repos/%s/%s/import"):format(owner, repo))
end

function Migrations.startAnImport(owner, repo)
	return Migrations.Http.GET(("https://api.github.com/repos/%s/%s/import"):format(owner, repo))
end

function Migrations.updateAnImport(owner, repo)
	return Migrations.Http.GET(("https://api.github.com/repos/%s/%s/import"):format(owner, repo))
end

function Migrations.cancelAnImport(owner, repo)
	return Migrations.Http.GET(("https://api.github.com/repos/%s/%s/import"):format(owner, repo))
end

function Migrations.getCommitAuthors(owner, repo, parameters)
	return Migrations.Http.GET(("https://api.github.com/repos/%s/%s/import/authors"):format(owner, repo), parameters)
end

function Migrations.mapACommitAuthor(owner, repo, parameters)
	return Migrations.Http.GET(("https://api.github.com/repos/%s/%s/import/authors"):format(owner, repo), parameters)
end

function Migrations.getLargeFiles(owner, repo)
	return Migrations.Http.GET(("https://api.github.com/repos/%s/%s/import/large_files"):format(owner, repo))
end

function Migrations.updateGitLfsPreference(owner, repo, body)
	return Migrations.Http.PATCH(("https://api.github.com/repos/%s/%s/import/lfs"):format(owner, repo), nil, body)
end

function Migrations.listUserMigrations(parameters)
	return Migrations.Http.GET(("https://api.github.com/user/migrations"):format(), parameters)
end

function Migrations.startAUserMigration(body)
	return Migrations.Http.POST(("https://api.github.com/user/migrations"):format(), nil, body)
end

function Migrations.getAUserMigrationStatus(migration_id, parameters)
	return Migrations.Http.GET(("https://api.github.com/user/migrations/%s"):format(migration_id), parameters)
end

function Migrations.downloadAUserMigrationArchive(parameters)
	return Migrations.Http.GET(("https://api.github.com/user/migrations"):format(), parameters)
end

function Migrations.deleteAUserMigrationArchive(migration_id)
	return Migrations.Http.DELETE(("https://api.github.com/user/migrations/%s/archive"):format(migration_id))
end

function Migrations.unlockAUserRepository(migration_id, repo_name)
	return Migrations.Http.DELETE(("https://api.github.com/user/migrations/%s/repos/%s/lock"):format(migration_id, repo_name))
end

function Migrations.listRepositoriesForAUserMigration(migration_id, parameters)
	return Migrations.Http.GET(("https://api.github.com/user/migrations/%s/repositories"):format(migration_id), parameters)
end

return Migrations