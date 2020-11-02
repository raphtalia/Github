local HttpService = game:GetService("HttpService")

local Http = {}

local Headers = {
    Accepts = "application/vnd.github.v3+json"
}

local function buildUrl(path, pathParams, queries)
	-- Adds optional path parameters to the URL
	local _,paramsRequired = path:gsub("%%s", "%%s")
	local newPathParams = table.create(paramsRequired, "")
	for i,v in pairs(pathParams) do
		newPathParams[i] = v
	end
	path = path:format(unpack(newPathParams))
	
	-- Removes double backslashes from the path
	repeat
		path = path:gsub("//", "/")
	until not path:match("//")

	local url = "https://api.github.com/".. path
	
	-- Adds query strings to the end of the URL
	local i = 1
	for name, value in pairs(queries or {}) do
		if i == 1 then
			url ..= ("?%s=%s"):format(name, tostring(value))
		else
			url ..= ("&%s=%s"):format(name, tostring(value))
		end
		i += 1
	end

	return url
end

local function requestAsync(method, url, body)
    local attempts = 0
    local response

    if body then
        body = HttpService:JSONEncode(body)
    end

    repeat
        if attempts > 2 then
            break
        end

        response = HttpService:RequestAsync({
            Url = url,
            Method = method:upper(),
            Headers = Headers,
            Body = body
        })

		if not response.Success then
			if response.StatusCode == 403 then
				error(HttpService:JSONDecode(response.Body).message)
            elseif response.StatusCode == 404 then
                warn("Check URL or authenication token")
                break
            end

            attempts += 1

            wait(math.random(2, 5))
        end
    until response.Success

	return response.Body
end

function Http.setAuthorization(type, credentials)
    type = type:lower()

    -- Planned support for OAuth later
    if type == "basic" then
        Headers.Authorization = "Basic ".. credentials
    elseif type == "oauth" then

    elseif type == "oauth2" then

    end
end

function Http.GET(path, pathParams, queries)
    return requestAsync("GET", buildUrl(path, pathParams, queries))
end

function Http.POST(path, pathParams, queries, body)
    return requestAsync("POST", buildUrl(path, pathParams, queries), body)
end

function Http.PUT(path, pathParams, queries, body)
    return requestAsync("PUT", buildUrl(path, pathParams, queries), body)
end

function Http.DELETE(path, pathParams, queries, body)
    return requestAsync("DELETE", buildUrl(path, pathParams, queries), body)
end

function Http.PATCH(path, pathParams, queries, body)
    return requestAsync("PATCH", buildUrl(path, pathParams, queries), body)
end

return Http