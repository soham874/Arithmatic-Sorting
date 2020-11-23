#!/bin/bash

read -p "Enter the number a : " a
read -p "Enter the number b : " b
read -p "Enter the number c : " c

res1=$(($a+($b*$c)))
res2=$((($a*$b)+$c))

echo "Result of a+b*c is $res1"
echo "Result of a*b+c is $res2"
