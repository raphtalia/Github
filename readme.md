# Usage

Reccomended you create a [personal access token](https://github.com/settings/tokens/new) to utilize this API due to the rate limit for unauthenicated users being 50/hr while the rate limit for authenicated users is 5000/hr. Authorize by running the method below.
```lua
Github.Authenication.authorize(token)
```

Much of this API is generated from the [Github REST API Docs](https://docs.github.com/en/free-pro-team@latest/rest/reference) which should make method names straight-forward.
