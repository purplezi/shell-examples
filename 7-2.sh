#/usr/bin/env bash

declare -a indexed_arr

declare -A associative_arr

my_array=(apple banana "Fruit Basket" orange)

associative_arr['hello']='world'
associative_arr['well']='done'

new_array[2]=apricot

echo ${#my_array[@]}

echo ${my_array[2]}

for ele in "${my_array[@]}";do
	echo "$ele"
done

for key in "${!associative_arr[@]}";do
	echo "$key ${associative_arr[$key]}"
done
