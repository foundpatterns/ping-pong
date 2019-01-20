event = ["ping_requested"]
priority = 1
input_parameters = ["request"]

local myid, myname = keys.get_profile()

local response = client_request.send({
  method = "GET",
  uri = "http://localhost:3001/?pong",
  headers = {},
  body = ""
})

return {
  status = 200,
  headers = {
    ["content-type"] = "application/json",
  },
  body = json.from_table({
    id = myid,
    name = myname,
    pong = response.body,
    response_headers = response.headers
  })
}
