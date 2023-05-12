#!/bin/bash
test_file=file_test.sh
output_file=file_output.sh
chmod +x $test_file
cd ..
chmod +x ebash.sh

echo "N" | ./ebash.sh tests/$test_file tests/$output_file > /dev/null

if [[ $? -eq 1 ]]
then
    echo "Error obtained. Test passed"
    exit 0
else
    echo "Error didn't obtain. Test failed"
    exit 1
fi