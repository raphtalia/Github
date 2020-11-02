# Usage

Reccomended you create a [personal access token](https://github.com/settings/tokens/new) to utilize this API due to the rate limit for unauthenicated users being 50/hr while the rate limit for authenicated users is 5000/hr

Much of this API is generated from the [Github REST API Docs](https://docs.github.com/en/free-pro-team@latest/rest/reference) which should make method names straight-forward.

# Example

```lua

local Github = require(script.Github)

Github.Authenication.authorize("your-private-access-token")

-- Lists repositories for user if authenicated
print(Github.Repositories.listRepositoriesForTheAuthenticatedUser())

-- Lists contents of this repository
print(Github.Repositories.getRepositoryContent(
  {"raphtalia", "github-lua-api"},
  {
    ref = "master"
  }
))

-- Deletes this file

Github.Repositories.deleteAFile(
  {"raphtalia", "github-lua-api", "readme.md"},
  nil, -- No query parameters
  {
    message = "Deleted readme.md",
    sha = "0cdef4d87d36739397deab52260c5e2c9ddbeadd"
  }
)

```
