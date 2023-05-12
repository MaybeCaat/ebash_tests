#!/bin/ebash
[[ $?{{ s(pi/4) > 1/2 }} ]] && echo -n "true " || echo -n "false "
[[ $?{{ 1/2 >= 1/2 }} ]] && echo -n "true " || echo -n "false "
[[ $?{{ 3/4 == 1/2 }} ]] && echo -n "true " || echo -n "false "

