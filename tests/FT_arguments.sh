#!/bin/bash
test_file=test_arguments.sh
chmod +x $test_file
cd ..
chmod +x ebash.sh

output=`./ebash.sh tests/$test_file`

if [[ $output == "Phrase idk is repeating 12 times" ]]
then
    echo "The code executed correctly. Test passed"
    exit 0
else
    echo "The code executed incorrectly. Test failed"
    exit 1
fi