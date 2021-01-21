#DAY 5 Prob01

#Problem 1: Random single digit number.
#Solution : 

isFullTime=1
isPartTime=2
randomCheck=$(($RANDOM%3))
if [[ $randomCheck -eq $isFullTime ]]
then
        echo "Full Time present"
elif [[ $randomCheck -eq $isPartTime ]]
then
        echo "Part Time presnt"
else
        echo "Absent "
fi
#-------------------------------------------------------
#Problem 2 : Random to get dice number between 1 to 6.
3Solution:

echo $(($RANDOM % 6 + 1))
#-------------------------------------------------------
#Problem 3: Add two random numbers.
#Solution :

n1=$(($RANDOM))
n2=$(($RANDOM))
sum=$(($n1 + $n2))
echo $n1 "+" $n2 "=" $sum
#-------------------------------------------------------
#Problem 4: Sum and average of 5 2 digit numbers.
#Solution :

for i in {1..5}
do
        sum+=$((RANDOM%100))
        avg=$(($sum/5))

done
echo "Sum : " $sum "Average : " $avg
#--------------------------------------------------------
#Problem 5: Unit conversion
#Solution :
#1. 1ft = 12 in then 42in = ? ft
awk "BEGIN {print 100/3}"
#--------------------------
#2. Rectangular plot 60feet*40feet into meters.

l=60
b=40
awk "BEGIN { print $l*0.3048 } m"
awk "BEGIN { print $b*0.3048 } m"
#--------------------------
#3.calculate area of 24 such plots in acres.
l=60
b=40
lm=`awk "BEGIN { print $l*0.3048 } "`
bm=`awk "BEGIN { print $b*0.3048 } "`

area=`awk "BEGIN { print $lm*$bm } "`
ac=`awk "BEGIN { print $area*$area*0.00024711 } "`







