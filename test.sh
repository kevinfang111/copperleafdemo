#!/bin/bash

URL="https://red-coast-05a8c4e10.1.azurestaticapps.net"

response=$(curl -s -w "%{http_code}" $URL)

echo "return code is $response"

#exit script gracefully if http return code is successful.  Otherwise exit error
if [[ "$response" == *"200"* ]]
then
        echo "passed"
else
        echo "failed"
fi