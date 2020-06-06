#! /bin/bash -x
headCount=0
tailCount=0

while [[ $headCount -lt 21 && $tailCount -lt 21 ]]
do
        headToss=$(( $RANDOM%2 ))
        if [ $headToss -eq 1 ]
        then
                let headCount++
	fi
	tailToss=$(( $RANDOM%2 ))
        if [ $tailToss -eq 0 ]
	then
		let tailCount++
        fi
done

echo "head occured : " $headCount
echo "tails occured : " $tailCount



if [ $headCount -eq $tailCount ]
then
	echo "game is tie"
	head=0
	tail=0
	diff=0
	while [[ $diff -lt 2 ]]
	do
        	toss=$(( $RANDOM%2 ))
        	if [ $toss -eq 1 ]
       		then
                	let head++
        	else
                	let tail++
        	fi

        	if [ $head -gt $tail ]
        	then
                  diff=$(( $head - $tail ))
        	else
                  diff=$(( $tail - $head ))
        	fi
        done
	if [ $head -gt $tail ]
	then
        	echo "head win by" $diff "times"
	else
        	echo "tail win by" $diff "times"
	fi

elif [ $tailCount -eq 21 ]
then
        result2=`expr $tailCount - $headCount`
        echo "tail win" $result2 "times more than head"

else 

	result1=`expr $headCount - $tailCount`
        echo "head win" $result1 "times more than tail"

fi




