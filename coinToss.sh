#!/bin/bash 
echo "This is multiple coins flip simulator problem"
randomValue=$(($RANDOM%2+1));
if [ $randomValue == 1 ]
then
        echo "Head";
else
        echo "Tail";
fi
