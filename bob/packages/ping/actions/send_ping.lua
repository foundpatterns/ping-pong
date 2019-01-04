event = ["ping_requested"]
priority = 1
input_parameters = ["request"]

--[[local response = client_request.send({
  method = "GET",
  uri = "?pong",
  headers = {},
  body = ""
})]]

local pong_response = "Missing"

local myid, myname = keys.get_profile()

local body =
  "myid: " .. myid ..
  "\nmyname:" .. myname ..
  "\npong respone: " .. pong_response

return {
  status = 200,
  headers = {},
  body = body
}
