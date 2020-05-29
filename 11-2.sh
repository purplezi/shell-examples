#!/usr/bin/env bash

NAMES=(Joe Jenny Sara Tony)
for N in ${NAMES[@]} ; do
    echo "My name is $N"
done

IFS=$'\n'
for f in $(ps -eo command) ; do
    echo "$f"
done
