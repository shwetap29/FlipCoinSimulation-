#!/bin/bash -x
#printing message 
printf "Welcome to flip coin simulation \n"
#generating RANDOM VALUE
result=$((RANDOM%2+1))
#constant variable 
COUNT_HEAD=0
COUNT_TAIL=0
read -p "Enter how many times to flip coin: " userInput
TEMP=$userInput
#INITIALIZE DICTIONARY
declare -A Flippingcoin
#using loop to flip coin multiple times
for(( i=1; i<=$userInput; i++ ))
       do
          #GENERATING RANDOM VALUE
          result=$((RANDOM%2+1))
          case $result in
                1)
                   COUNT_HEAD=$(($COUNT_HEAD+1))
                  FlippingCoin["H"]="$COUNT_HEAD"
                   ;;
                 2)
                   COUNT_TAIL=$(($COUNT_TAIL+1))
                   FlippingCoin["T"]="$COUNT_TAIL"
				;;
		esac
	done
headPercentage=`echo "scale=3; $COUNT_HEAD / $TEMP * 100 "  #|bc -l`
tailPercentage=`echo "scale=3; $COUNT_TAIL / $TEMP * 100 "  #|bc -l`
#PRINTING KEY AND VALUE OF COIN
for count in ${!FlippingCoin[@]}
	do
		echo "$count : ${FlippingCoin[$count]}"
	done
#PRINTING PERcENTAGE OF FLIPING COIN
echo "Head percentage : $headPercentage "
echo "Tail percentage : $tailPercentage "
