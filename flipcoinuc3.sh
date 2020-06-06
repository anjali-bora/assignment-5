#!/bin/bash -x
count=0
hhh=111
hth=101
hht=110
ttt=000
tht=010
tth=001
hhh_count=0
hth_count=0
hht_count=0
ttt_count=0
tht_count=0
tth_count=0

for (( i=1; i<=10; i++ ))
do
  toss1=$(($(($RANDOM%10))%2))
  toss2=$(($(($RANDOM%10))%2))
  toss3=$(($(($RANDOM%10))%2))

    case ${toss1}${toss2}${toss3} in
                   111)
                   ((hhh_count++))
                    coin[count]=HHH ;;

                   101)
                   ((hth_count++))
                    coin[count]=HTH;;

                  110)
                   ((hht_count++))
                    coin[count]=HHT;;

                 000)
                   ((ttt_count++))
                    coin[count]=TTT;;

                 010)
                    ((tht_count++))
                     coin[count]=THT;;

                 001)
                    ((tth_count++))
                     coin[count]=TTH;;
    esac
      ((count++))
done
HHH_percentage=$(($hhh_count%100*10))
HTH_percentage=$(($hth_count%100*10))
HHT_percentage=$(($hht_count%100*10))
TTT_percentage=$(($ttt_count%100*10))
THT_percentage=$(($tht_count%100*10))
TTH_percentage=$(($tth_count%100*10))

echo "COMBINATION SET : " [ ${coin[@]} ]
echo "hhh % : " $HHH_percentage"%"
echo "hth % : " $HTH_percentage"%"
echo "hht % : " $HHT_percentage"%"
echo "ttt % : " $TTT_percentage"%"
echo "tht % : " $THT_percentage"%"
echo "tth % : " $TTH_percentage"%"

