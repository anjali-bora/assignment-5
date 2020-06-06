#!/bin/bash -x
headcount=0
tailcount=0
for (( i=0; i<10; i++ ))
do
toss=$(($(($RANDOM%10))%2))
if [ $toss -eq 1 ];then
   ((headcount++))
else
  ((tailcount++))
fi
done
echo "head occured : " $headcount
echo "tails occured : " $tailcount

