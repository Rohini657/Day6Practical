#!/bin/bash -x
initialmoney=100
goalmoney=200
bets=0
wins=0
echo "enter the number of round";
read rounds
for (( i=0;i<=$rounds;i++ ))
      	do
        money=$initialmoney
            while [ $money -gt 0 -a $money -lt $goalmoney ]
            do
                if [ $money -lt 0 ]
		then
                    echo "you are out of money"
                else
                bets=$(($bets+1))
		fi
                if [ $(( $RANDOM % 2 +1 )) -eq 1 ]
                then
                    money=$(($money+1))
                else
                    money=$(($money-1))
            	fi
            if [ $money -eq $goalmoney ]
		then
               wins=$(($wins+1))
            fi

        done
       

done

echo $wins " wins from total of " $rounds
totalwin=$((( 100 * $wins ) /$rounds ))
echo "percentage of wins is : " $totalwin
totalloss=$(((100 * ($rounds - $wins))/$rounds))
echo "percentage of loss is : " $totalloss
averagebets=$(((1 * $bets) / $rounds));
echo "average no bets is : " $averagebets
