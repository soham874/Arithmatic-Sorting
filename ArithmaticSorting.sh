#!/bin/bash

function bubblesort(){
	arr=("$@")
	for i in ${!arr[@]}
	do
		for j in ${!arr[@]}
		do
			if [ ${arr[$i]} -gt ${arr[$j]} ]
			then
				temp=${arr[$i]}
				arr[$i]=${arr[$j]}
				arr[$j]=$temp
			fi
		done
	echo ${arr[@]}
	done
	echo "Sorted result array in descendin is : " ${arr[@]}
}

read -p "Enter the number a : " a
read -p "Enter the number b : " b
read -p "Enter the number c : " c

res2=$(($a+($b*$c)))
res3=$((($a*$b)+$c))
res4=$(($c+($a/$b)))
res5=$((($a%$b)+$c))

declare -A results

for i in {2..5}
do
	results[$i]=`echo "$((res$i))"`
	resultsarray[(($i-2))]=${results[$i]}
done

#echo "Stored results in dictionary are : "${results[@]}
#echo "Stored results in array are : "${resultsarray[@]}

echo "Result of a+b*c is $res2"
echo "Result of a*b+c is $res3"
echo "Result of c+a/b is $res4"
echo "Result of a%b+c is $res5"

bubblesort "${resultsarray[@]}"
