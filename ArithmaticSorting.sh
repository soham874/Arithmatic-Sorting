#!/bin/bash

read -p "Enter the number a : " a
read -p "Enter the number b : " b
read -p "Enter the number c : " c

res=$(($a+($b*$c)))

echo "Result is $res"
