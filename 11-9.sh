#!/usr/bin/env bash

set -e
for f in $(ps -eo command 2>/dev/null) ; do
	[[ -e "$f" ]] || continue
	ls "$f"
done 

set -e
for f in $(ps -eo command) ; do
	ls "$f"
done
