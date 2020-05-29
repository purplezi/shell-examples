#!/usr/bin/env bash

STRING="to be or not to be"
echo ${STRING[@]//be/eat} # to eat or not to eat

STRING="to be or not to be"
echo ${STRING[@]// not/} # to be or to be

STRING="to be or not to be"
echo ${STRING[@]/#to be/eat now} # eat now or not to be

STRING="to be or not to be"
echo ${STRING[@]/%be/eat} # to be or not to eat

STRING="to be or not to be"
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)} # to be or not to be on 2012-06-14
