local HttpService = game:GetService("HttpService")

local Http = {}

local Headers = {
    Accepts = "application/vnd.github.v3+json"
}

function formatParameters(url, parameters)
    local i = 1

    for name, value in pairs(parameters or {}) do
        if i == 1 then
            url += ("?%s=%s"):format(name, tostring(value))
        else
            url += ("&%s=%s"):format(name, tostring(value))
        end
        i += 1
    end

    return url
end

function requestAsync(method, url, parameters, body)
    url = formatParameters(url, parameters)

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

function Http.GET(url, parameters)
    return requestAsync("GET", url, parameters)
end

function Http.POST(url, parameters, body)
    return requestAsync("POST", url, parameters, body)
end

function Http.PUT(url, parameters, body)
    return requestAsync("PUT", url, parameters, body)
end

function Http.DELETE(url, parameters, body)
    return requestAsync("DELETE", url, parameters, body)
end

function Http.PATCH(url, parameters, body)
    return requestAsync("PATCH", url, parameters, body)
end

return Http