local HttpService = game:GetService("HttpService")

local function buildUrl(url, pathParams, queries)
	pathParams = pathParams or {}
	queries = queries or {}

	-- Adds optional path parameters to the URL
	local path = ""
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

	url = url.. path

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

local function requestAsync(method, url, headers, body)
    if body then
        body = HttpService:JSONEncode(body)
    end

	print(method, url, headers)
    local response = HttpService:RequestAsync({
        Url = url,
        Method = method:upper(),
        Headers = headers or {},
        Body = body
    })

    local responseBody = HttpService:JSONDecode(response.Body)

    if not response.Success then
        if response.StatusCode == 403 then
            error(responseBody.message)
        elseif response.StatusCode == 404 then
            error("Check URL or authenication token\n".. responseBody.message)
        end
    end

	return responseBody
end

local Http = {}

function Http.get(path, headers, pathParams, queries)
    return requestAsync("GET", buildUrl(path, pathParams, queries), headers)
end

function Http.post(path, headers, pathParams, queries, body)
    return requestAsync("POST", buildUrl(path, pathParams, queries), headers, body)
end

function Http.put(path, headers, pathParams, queries, body)
    return requestAsync("PUT", buildUrl(path, pathParams, queries), headers, body)
end

function Http.delete(path, headers, pathParams, queries, body)
    return requestAsync("DELETE", buildUrl(path, pathParams, queries), headers, body)
end

function Http.patch(path, headers, pathParams, queries, body)
    return requestAsync("PATCH", buildUrl(path, pathParams, queries), headers, body)
end

return Http