#!/bin/bash -x
headcount=0
tailcount=0

while (( $headcount<=21 || $tailcount<=21 ))
do
toss=$(($(($RANDOM%10))%2))
if [ $toss -eq 1 ];then
 ((headcount++))
else
  ((tailcount++))
fi
if [ $headcount -eq 21 ]
then
 result1=`expr $headcount - $tailcount`
 echo "head win" $result1 "times more than tail"
 
break;

elif [ $tailcount -eq 21 ]
then
 result2=`expr $tailcount - $headcount`
 echo "tail win" $result2 "times more than head"
break;
elif [[ $headcount -eq 21 && $tailcount -eq 21 ]]
then
 echo "tie"
fi
done
echo "head occured : " $headcount
echo "tails occured : " $tailcount
