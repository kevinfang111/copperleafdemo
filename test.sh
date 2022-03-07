#!/bin/bash

URL="https://red-coast-05a8c4e10.1.azurestaticapps.net"

response=$(curl -s -w "%{http_code}" $URL)
http_code=$(tail -n1 <<< "$response")

echo "return code is $http_code"

#exit script gracefully if http return code is successful.  Otherwise exit error
if [[ "$http_code" == *"200"* ]]
then
        echo "passed"
else
        echo "failed"
fi