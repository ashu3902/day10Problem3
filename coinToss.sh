#!/bin/bash 
echo "This is multiple coins flip simulator problem"
declare -A Coin
declare -A Double
declare -A Triple
declare -A allList
VAR1="H"
VAr2="T"
hhCount=0
ttCount=0
htCount=0
thCount=0
count=1
hcount=0
tcount=0
hhhCount=0
tttCount=0
httCount=0
hthCount=0
hhtCount=0
thhCount=0
thtCount=0
tthCount=0
randomValue=$(($RANDOM%2+1));
if [ $randomValue == 1 ]
then
        echo "Head";
else
        echo "Tail";
fi
#Singleton
for((i=1;i<22;i++))
do
	randomValue=$(($RANDOM%2+1));
	if [ $randomValue == 1 ]
	then
        	Coin[$i]='H'
	else
        	Coin[$i]='T'
fi
done

for key in "${!Coin[@]}"
do
	if [[ ${Coin[$key]} == 'H' ]]
        then
                ((hCount++))
        else
                ((tCount++))
        fi
done
hper=$(( $hCount*100/20 ))
tper=$(( $tCount*100/20 ))
allList["hCount"]=$hper
allList["tCount"]=$tper
echo "Percentage of Head is $hper"
echo "Percentage of Tail is $tper"
#Doublet
while [ $count -ne 21 ]
do
    s=""
    for((i=0;i<2;i++))
    do
        randomValue=$(($RANDOM%2+1));
        if [ $randomValue == 1 ]
        then
              s="${s}$VAR1"
        else
            s="${s}$VAR2"
        fi
    done
Double[$count]="$s"
((count++))
done
for key in "${!Double[@]}"
do
     if [[ ${Double[$key]} == 'HH' ]]
        then
                ((hhCount++))
        elif [[ ${Double[$key]} == 'TT' ]]
        then
                ((ttCount++))
        elif [[ ${Double[$key]} == 'HT' ]]
        then
                ((htCount++))
        else
                ((thCount++))
      fi
done
hhper=$(( $hhCount*100/20 ))
ttper=$(( $ttCount*100/20 ))
htper=$(( $htCount*100/20 ))
thper=$(( $thCount*100/20 ))
echo "Percentage of HH is $hhper"
echo "Percentage of TT is $ttper"
echo "Percentage of HT is $htper"
echo "Percentage of TH is $thper"
allList["hhCount"]=$hhper
allList["ttCount"]=$ttper
allList["htCount"]=$htper
allList["thCount"]=$thper

#Triplet
count=1
while [ $count -ne 21 ]
do
    s=""
    for((i=0;i<3;i++))
    do
        randomValue=$(($RANDOM%2+1));
        if [ $randomValue == 1 ]
        then
              s="${s}$VAR1" 
        else
            s="${s}$VAR2"
        fi
    done
Triple[$count]="$s"
((count++))
done
for key in "${!Triple[@]}"
do
     if [[ ${Triple[$key]} == 'HHH' ]]
        then
                ((hhhCount++))
        elif [[ ${Triple[$key]} == 'TTT' ]]
        then
                ((tttCount++))
        elif [[ ${Triple[$key]} == 'HTT' ]]
        then
                ((httCount++))
        elif [[ ${Triple[$key]} == 'HTH' ]]
        then
                ((hthCount++))
        elif [[ ${Triple[$key]} == 'HHT' ]]
        then
                ((hhtCount++))
        elif [[ ${Triple[$key]} == 'THH' ]]
        then
                ((thhCount++))
        elif [[ ${Triple[$key]} == 'THT' ]]
        then
                ((thtCount++))
        else
                ((tthCount++))
      	fi
done
hhhper=$(( $hhhCount*100/20 ))
tttper=$(( $tttCount*100/20 ))
httper=$(( $httCount*100/20 ))
hthper=$(( $hthCount*100/20 ))
hhtper=$(( $hhtCount*100/20 ))
thhper=$(( $thhCount*100/20 ))
thtper=$(( $thtCount*100/20 ))
tthper=$(( $tthCount*100/20 ))
echo "Percentage of HHH is $hhhper"
echo "Percentage of TTT is $tttper"
echo "Percentage of HHT is $httper"
echo "Percentage of HTH is $hthper"
echo "Percentage of HHT is $hhtper"
echo "Percentage of THH is $thhper"
echo "Percentage of THT is $thtper"
echo "Percentage of TTH is $tthper"
allList["hhhCount"]=$hhhper
allList["tttCount"]=$tttper
allList["httCount"]=$httper
allList["hthCount"]=$hthper
allList["hhtCount"]=$hhtper
allList["thhCount"]=$thhper
allList["thtCount"]=$thtper
allList["tthCount"]=$tthper

large=1;
a="${allList["hCount"]}";
for key in ${!allList[@]}
do
        if [[ ${allList[key]} -gt $a ]]
        then
                large=$key;
        else
                large=$a;
        fi
done
echo "The number with highest percenatge is ${allList[$large]} $large  "
