#!/bin/bash
test_file=file_test.sh
output_file=file_output.sh
chmod +x $test_file
cd ..
chmod +x ebash.sh

./ebash.sh tests/$test_file tests/$output_file > /dev/null
output=`cat tests/$output_file`
test_output=`cat tests/file_test_output.sh` 

if [[ $output == $test_output ]]
then
    echo "The code matched. Test passed"
    exit 0
else
    echo "The code didn't match. Test failed"
    exit 1
fi