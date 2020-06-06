#!/bin/bash -x
count=0
head_head_count=0
tail_head_count=0
tail_tail_coun=0
head_tail_count=0

for (( i=1; i<=10; i++ ))
do
  toss1=$(($(($RANDOM%10))%2))
  toss2=$(($(($RANDOM%10))%2))
    if [[ $toss1 -eq 1 && $toss2 -eq 1 ]]
    then
      ((head_head_count++))
      coin[count]=HH

     elif [[ $toss1 -eq 0 && $toss2 -eq 1 ]]
     then
       ((tail_head_count++))
        coin[count]=TH

      elif [[ $toss1 -eq 0 && $toss2 -eq 0 ]]
      then
        ((tail_tail_count++))
         coin[count]=TT

       elif [[ $toss1 -eq 1 && $toss2 -eq 0 ]]
       then
         ((head_tail_count++))
          coin[count]=HT
   fi
     ((count++))
done

head_head_percentage=$(($head_head_count%100*10))
head_tail_percentage=$(($head_tail_count%100*10))
tail_tail_percentage=$(($tail_tail_count%100*10))
tail_head_percentage=$(($tail_head_count%100*10))

echo "combination set : " [ ${coin[@]} ]
echo "HH % : " $head_head_percentage"%"
echo "HT % : " $head_tail_percentage"%"
echo "TT % : " $tail_tail_percentage"%"
echo "TH % : " $tail_head_percentage"%"
