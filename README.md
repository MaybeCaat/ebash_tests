# ebash

eBash (Extended Bash) is a simple Bash preprocessor adding various arithmetic additions and shortcuts.

## Quick Start

1. Download the script and give it execution rights: 
```
chmod +x ./ebash.sh
```

2. Write a Bash script using additional eBash syntax and give it an extension of `.esh`: 

_test.esh_
```
read -p "Please enter the circle radius: " radius 
echo "Area = ${{pi*$radius^2}}" # syntax for math, pi is a special keyword
$radius++ # the increment operator
echo "If you increment the radius, the area would be = ${{pi*$radius^2}}"
# syntax for math conditionals 
[[ $?{{ $radius > 3.5 }} ]] && echo "New radius is greather than 3.5" 
``` 

3. Then execute the script using `ebash.sh`: 
```
./ebash.sh test.esh
```

## Docs

### General 

The script works as a preprocessor that transpiles .esh files to Bash-executable .sh files. 

.esh files support special syntax for complex arithmetic operations using [bc](https://www.gnu.org/software/bc/manual/html_mono/bc.html). 

There are three ways of using ebash: 
1. Directly executing .esh files: 
```
./ebash.sh test.esh 
```
2. Transpiling .esh files into regular .sh files: 
```
./ebash.sh test.esh test.sh 
```
3. Natively executing .esh files by using a [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix). For example, `#!/usr/bin/ebash`. 
```
chmod +x test.esh 
./test.esh 
```
_You need to copy ebash.sh into /usr/bin/ebash (or the path of your choice)_

### Features 

#### Increment Operator 
Example: 

```
i=1
$i++
echo "i = $i" 
```

Outputs `i = 2`

#### Arithmetic Expressions 

Example:

```
a=${{ 2.5 * 6 + cos(0) }} # 15 
b=${{ 2^2 }} # 4 
echo "The result is ${{ $a / $b }}" 
```

Outputs `The result is 3.75`


#### Arithmetic Conditional Expressions 

Example:

```

a=${{ 2.5 * 6 + cos(0) }} # 15 
b=${{ 2^2 }} # 4 
echo "The result is ${{ $a / $b }}" 
```

Outputs `The result is 3.75`

## TODO

- [x] increment operator `$i++`
- [x] complex arithmetic expressions `${{5/3 + 3^2 + sin(0)}}`
- [x] complex arithmetic inequalities `$?{{5/3 >= 2}}`
- [x] directly executing the provided .esh file 
- [x] transpiling to a file 
- [x] specifying the output file path 
- [x] validating the output file path
- [x] add more info to the docs 
- [x] add support for the PI constant
- [x] validation of the input file argument 
- [x] support for running with shebang 
- [x] changing the shebang for the output file
- [x] checking if the output file already exists
