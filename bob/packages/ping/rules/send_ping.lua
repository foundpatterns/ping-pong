priority = 1
input_parameter = "request"
events_table = ["ping_requested"]

request.method == "GET"
and
#request.path_segments == 0
and
request.query.ping
