event = ["pong_requested"]
priority = 1
input_parameters = ["request"]

local pong_response = "Missing"

local myid, myname = keys.get_profile()

return {
  status = 200,
  headers = {
    ["content-type"] = "application/json",
  },
  body = json.from_table({
    id = myid,
    name = myname,
    request_headers = request.headers
  })
}
