#!/usr/bin/awk -f
function transform(input, server_string) {
	if ( index(input, server_string) == 41 ) {
		return substr(input, 7, 19) " " substr(input, length(server_string) + 52)
	}
}

BEGIN {
	sample_server_string = "45.34.167.87 califa AssaultCube[califapublic]"
	sample_payload = "Date: 2017-04-24T23:30:06.900Z, Server: 45.34.167.87 califa AssaultCube[califapublic], Payload: Team RVSF:  2 players,   23 frags"
	expected_result = "2017-04-24T23:30:06 Team RVSF:  2 players,   23 frags"
	result = transform(sample_payload, sample_server_string)
	if ( result != expected_result ) {
		print "test failed: " result > "/dev/stderr"
		exit(1)
	}
}

{
	r = transform($0, server_string)
	if ( r ) {
		print r
	}
}
