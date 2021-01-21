#Day6 for loop

#Problem 1: take input n and print powers of 2 equal or less than 2^n.
#Solution:

read -p "Enter a value for power: " n
pow=1
for ((i=1; i<=n; i++))
do
        pow=`expr 2 \* $pow`
        echo "2 * $i = $pow"
done

echo $pow
#=====================================================================
#Problem 2:Takes n as input and prints the nth harmonic number.
#Solution : 
#!/bin/bash -x
read -p "Enter the value for n for harmonic number:" n

for (( i=2; i<=$n; i++ ))
do

        har=`awk " BEGIN { print $har+(1/$i) }"`
        h=`awk "BEGIN { print 1.0+$har }"`
        echo "hr :" $har
        echo "h : " $h
done
#=====================================================================

#Problem 3: Prime or not
#Solution:
read -p "Enter a number :" n
flag=0
for(( i=2; i<=$n/2; ++i ))
do
        if [[ $(($n%$i)) -eq 0 ]]
        then
                flag=1;
                break;
        fi
done
if [[ $n -eq 1 ]]
then
        echo "$n is neither a Prime Number or composite."
else
        if [[ flag -eq 0 ]]
        then
                echo " $n is a Prime Number. "
        else
                echo " $n is not a Prime Number."
        fi
fi
#=====================================================================

#Problem 4: Find Prime numbers within a given range.
#Solution: primeRange.sh
read -p "Enter a range of numbers m to n :" m n

echo " Prime Numbers between $m and $n are:"

for(( i=$m; i<=$n; ++i ))
do
        for (( j=2; j<$i; j++ ))
        do
        if [[ $(($i%$j)) -eq 0 ]]
        then
                flag=0;
                break;
        else
                flag=1;
        fi
        done
        if [[ flag -eq 1 ]]
        then
            echo $i
        fi

done
#=====================================================================

#Problem 5: Factorial of a number.
#Solution:

read -p "Enter a number:" n

echo "Factorial of $n is:"
fact=1
for(( i=1; i<=$n; i++ ))
do
        fact=$(($fact*i))
done

echo $fact
#=====================================================================

#Problem 6:To compute factors of number n using prime factorization method.
#Solution:

read -p "Enter a number:" n

echo "Factorial of $n is:"

for(( i=2; i<=$n; i++ ))
do
        if [[ $(($n%$i)) -eq 0 ]]
        then
                flag=1;
                for(( j=2; j<=$i/2; j++ ))
                do
                if [[ $(($i%$j)) -eq 0 ]]
                then
                        flag=0;
                        break;
                fi
                done

        if [[ flag -eq 1 ]]
        then
                echo $i
        fi
        fi
done
#======================================================================
#======================================================================
#While Loop

#======================================================================

#Problem 3: Flip coin till head or tails wins 11 times.
#Solution:
n=2
h=0
t=0
flips=1

while [[ $hcount -lt 11 || $tcount -lt 11 ]]
do
        coin=$((RANDOM%2))

        if [[ $coin -eq 1 ]]
        then
        h=$h+1
        hcount+=1
        else
        t=$t+1
        tcount+=1
        fi
        flips+=1
done
if [[ $hcount -eq 11 ]]
then
        echo " Head flipped 11 times "
else [[ $tcount -eq 11 ]]
        echo " Tail flipped 11 times "
fi
#======================================================================

#Problem 4:
#Solution:

goal=200
win=1
cash=100

while [[ $cash -lt 200 && $cash -gt 0 ]]
do
        randNum=$((RANDOM%2))
        if [[ $randNum -eq 1 ]]
        then

                cash=$cash+20
                win=$win+1
        else
                cash=$cash-20
        fi
        echo $cash
        bet+=1
done

if [[ $cash -ge $goal ]]
then
        echo "player won!"
        echo " You won $cash cash. "
else
        echo "Player lost."
fi

echo " No. of Bets :" $bet
echo "No. of Victory :" $win











	

