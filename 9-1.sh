#!/usr/bin/env bash

STRING="this is a string"
echo ${#STRING} #16

M_STRING=�丸
export LC_ALL=C.UTF-8
echo ${#M_STRING} # 2
export LC_ALL=C
echo ${#M_STRING} # 6
