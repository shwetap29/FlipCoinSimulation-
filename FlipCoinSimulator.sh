#!/bin/bash -x
#printing message 
printf "Welcome to flip coin simulation \n"
#generating RANDOM VALUE
result=$((RANDOM%2+1))
isHead=1
#condition Is true then Head else Tail
if(($isHead == $result))
then
      echo "Head"
else
      echo "Tail"
fi
#multiple times of flipping a coin 
while(( 0==0 ))
do
   head=$((RANDOM%2+1))
   tail=$((RANDOM%2+1))
   count_head=$(( count_head + head ))
   count_tail=$(( count_tail + tail ))

#If its TIE
if(( $isHead == head ))
     then
        echo "Tie"
        break
fi
if(( $istail == tail ))
     then
        echo "tie"
        break
 fi
done
