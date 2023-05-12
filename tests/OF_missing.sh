#!/bin/bash
test_file=file_test.sh
chmod +x $test_file
cd ..
chmod +x ebash.sh

output=`./ebash.sh tests/$test_file`

if [[ $output == "Testing ebash..." ]]
then
    echo "The code executed. Test passed"
    exit 0
else
    echo "The code didn't execute. Test failed"
    exit 1
fi