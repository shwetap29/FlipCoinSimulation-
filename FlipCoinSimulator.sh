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

