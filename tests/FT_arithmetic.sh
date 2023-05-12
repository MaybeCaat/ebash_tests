#!/bin/bash
test_file=test_arithmetic.sh
chmod +x $test_file
cd ..
chmod +x ebash.sh

output=`./ebash.sh tests/$test_file`

if [[ $output == "1.8 .75 1.25 .28000000000000000000 64 3.14159265358979323844 0" ]]
then
    echo "The code executed correctly. Test passed"
    exit 0
else
    echo "The code executed incorrectly. Test failed"
    exit 1
fi