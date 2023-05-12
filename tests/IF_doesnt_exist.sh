#!/bin/bash
chmod +x ../ebash.sh

./../ebash.sh idk.sh > /dev/null

if [[ $? -eq 1 ]]
then
    echo "Error obtained. Test passed"
    exit 0
else
    echo "Error didn't obtain. Test failed"
    exit 1
fi