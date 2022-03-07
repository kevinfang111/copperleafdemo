#!/bin/bash

URL="https://red-coast-05a8c4e10.1.azurestaticapps.net"

response=$(curl -s -w "%{http_code}" $URL)
http_code=$(tail -n1 <<< "$response")  # get the last line

echo "return code is $http_code"

#exit script gracefully if http return code is successful.  Otherwise exit error
if [[ "$http_code" == "200" ]]
then
	return 0
else
	return 1
fi