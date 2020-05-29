#!/usr/bin/env bash
NAMES=(John Eric Jessica)

NUMBERS=(1 2 3 4 5 6 7 8 9 10)
STRINGS=(hello world)
NumberOfNames=3
second_name='Eric'

T_NUMBERS=$(seq 1 10)
T_STRINGS=(hello world)

# Test Case 1
i=0
for n in ${T_NUMBERS[@]};do
	if [[ ${n} -ne ${NUMBERS[${i}]} ]];then
		echo "failed in NUMBERS test"
	fi
	i=$((i+1))
done

# Test Case 2
i=0
for n in ${T_STRINGS[@]};do
	if [[ "${n}" != "${STRINGS[${i}]}" ]];then
		echo "failed in STRINGS test"
	fi
	i=$((i+1))
done

# Test Case 3
if [[ $NumberOfNames -ne ${#NAMES[@]} ]];then
	echo "failed in NumberOfNames test"
fi

# Test Case 4
if [[ "${NAMES[1]}" != "${second_name}" ]];then
	echo "failed in Array Element Access test"
fi
