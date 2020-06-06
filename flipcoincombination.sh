#!/bin/bash -x

count=0
headcount=0
tailcount=0

for (( i=1; i<=10; i++ ))
do
toss=$(($(($RANDOM%10))%2))
if [ $toss -eq 1 ];then
    ((headcount++))
  coin[count]="head"
else
  ((tailcount++))
  coin[count]="tail"
fi
   ((count++))
done
head_percentage=$(($headcount%100*10))
tail_percentage=$(($tailcount%100*10))

echo "total occurance : " [ ${coin[@]} ]
echo "key value : " ${!coin[@]}
echo "ocurance of head in percentage : " $head_percentage"%"
echo "occurance of tail in percentage : " $tail_percentage"%"
