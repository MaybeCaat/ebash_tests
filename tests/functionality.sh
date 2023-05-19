#!/bin/bash
cd ..
chmod +x ebash.sh

while read test script answer
do
    if [[ $test != $1 ]]
    then
        echo "continue"
        continue
    fi
    chmod +x tests/$script
    output=`./ebash.sh tests/$script`
    echo "$output $answer"

    if [[ $output == $answer ]]
    then
        echo "The code executed correctly. Test passed"
        exit 0
    else
        echo "The code executed incorrectly. Test failed"
        exit 1
    fi
done < tests/func_data
