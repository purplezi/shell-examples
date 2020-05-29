#!/usr/bin/env bash

> file

echo "some string" > file

echo "some string" >> file

read -r line < file

IFS= read -r line < file
line=$(head -1 file)
line=`head -1 file`

echo -n -e " 123 \x0a456" > file
while read -r line; do
  echo "$line" | xxd -p
done < file

while IFS= read -r line; do
  echo "$line" | xxd -p
done < file

while IFS= read -r line || [[ -n "$line" ]]; do
  echo "$line" | xxd -p
done < file
