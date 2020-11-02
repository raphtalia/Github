local Authenication = {}

function Authenication.authorize(token)
    Authenication.Http.setAuthorization("basic", Authenication.Base64.encode(token))
end

return Authenication