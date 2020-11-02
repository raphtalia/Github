-- https://docs.github.com/en/free-pro-team@latest/rest/reference/migrations

local Migrations = {}

function Migrations.listOrganizationMigrations(pathParams, queries, body)
	return Migrations.Http.GET("orgs/%s/migrations", pathParams, queries, body)
end

function Migrations.startAnOrganizationMigration(pathParams, queries, body)
	return Migrations.Http.POST("orgs/%s/migrations", pathParams, queries, body)
end

function Migrations.getAnOrganizationMigrationStatus(pathParams, queries, body)
	return Migrations.Http.GET("orgs/%s/migrations/%s", pathParams, queries, body)
end

function Migrations.downloadAnOrganizationMigrationArchive(pathParams, queries, body)
	return Migrations.Http.GET("orgs/%s/migrations/%s/archive", pathParams, queries, body)
end

function Migrations.deleteAnOrganizationMigrationArchive(pathParams, queries, body)
	return Migrations.Http.DELETE("orgs/%s/migrations/%s/archive", pathParams, queries, body)
end

function Migrations.unlockAnOrganizationRepository(pathParams, queries, body)
	return Migrations.Http.DELETE("orgs/%s/migrations/%s/repos/%s/lock", pathParams, queries, body)
end

function Migrations.listRepositoriesInAnOrganizationMigration(pathParams, queries, body)
	return Migrations.Http.GET("orgs/%s/migrations/%s/repositories", pathParams, queries, body)
end

function Migrations.getAnImportStatus(pathParams, queries, body)
	return Migrations.Http.GET("repos/%s/%s/import", pathParams, queries, body)
end

function Migrations.startAnImport(pathParams, queries, body)
	return Migrations.Http.GET("repos/%s/%s/import", pathParams, queries, body)
end

function Migrations.updateAnImport(pathParams, queries, body)
	return Migrations.Http.GET("repos/%s/%s/import", pathParams, queries, body)
end

function Migrations.cancelAnImport(pathParams, queries, body)
	return Migrations.Http.GET("repos/%s/%s/import", pathParams, queries, body)
end

function Migrations.getCommitAuthors(pathParams, queries, body)
	return Migrations.Http.GET("repos/%s/%s/import/authors", pathParams, queries, body)
end

function Migrations.mapACommitAuthor(pathParams, queries, body)
	return Migrations.Http.GET("repos/%s/%s/import/authors", pathParams, queries, body)
end

function Migrations.getLargeFiles(pathParams, queries, body)
	return Migrations.Http.GET("repos/%s/%s/import/large_files", pathParams, queries, body)
end

function Migrations.updateGitLfsPreference(pathParams, queries, body)
	return Migrations.Http.PATCH("repos/%s/%s/import/lfs", pathParams, queries, body)
end

function Migrations.listUserMigrations(pathParams, queries, body)
	return Migrations.Http.GET("user/migrations", pathParams, queries, body)
end

function Migrations.startAUserMigration(pathParams, queries, body)
	return Migrations.Http.POST("user/migrations", pathParams, queries, body)
end

function Migrations.getAUserMigrationStatus(pathParams, queries, body)
	return Migrations.Http.GET("user/migrations/%s", pathParams, queries, body)
end

function Migrations.downloadAUserMigrationArchive(pathParams, queries, body)
	return Migrations.Http.GET("user/migrations", pathParams, queries, body)
end

function Migrations.deleteAUserMigrationArchive(pathParams, queries, body)
	return Migrations.Http.DELETE("user/migrations/%s/archive", pathParams, queries, body)
end

function Migrations.unlockAUserRepository(pathParams, queries, body)
	return Migrations.Http.DELETE("user/migrations/%s/repos/%s/lock", pathParams, queries, body)
end

function Migrations.listRepositoriesForAUserMigration(pathParams, queries, body)
	return Migrations.Http.GET("user/migrations/%s/repositories", pathParams, queries, body)
end

return Migrations