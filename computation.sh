#!/bin/bash -x

read -p "enter a : " a
read -p "enetr b : " b
read -p "enter c : " c
count=0
temp=0

echo "numbers are : " $a $b $c

result1=$(($a + $b * $c))
computation[(count++)]=$result1

result2=$(($a * $b + $c))
computation[(count++)]=$result2

result3=$(($c + $a / $b))
computation[(count++)]=$result3

result4=$(($a % $b + $c))
computation[(count++)]=$result4

for (( i=0; i<=3; i++ ))
do
 for ((j=i+1; j<=3; j++ ))
  do
   if [[ ${computation[i]} -gt ${computation[j]} ]]
   then
     temp=${computation[i]}
     computation[i]=${computation[j]}
     computation[j]=$temp
    fi
  done
done

for key in ${!computation[@]}
do
  echo $key : ${computation[$key]}
done
