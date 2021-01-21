#Day7 Arrays

#Problem :1 Find second largest and smalles in an array without sorting.
#Solution:
read -p "Enter the number of elements in the array" l
echo "Enter the elements in the array"
read -a n

echo "The array is :"
for((i=0; i<l; i++))
do
        echo ${n[i]}" "
done

max=${n[0]}
smax=${n[1]}
for ((i=1; i<=$l; i++))
do
        if [[ $max -lt ${n[$i]} ]]
        then
                smax=$max
                max=${n[i]}
        else
                if [[ ${n[i]} > $smax && ${n[i]} -ne $max ]]
                then
                        smax=${n[i]}
                fi
        fi
done

echo "The maximum number in the array is :" $max
echo "The second largest number is : " $smax

min=${n[0]}
for ((i=1; i<$l; i++))
do
        if [ $min -gt ${n[$i]} ]
        then
                smin=$min
                min=${n[i]}
        else
                if [[ ${n[i]} < $smin && ${n[i]} -ne $min ]]
                then
                        smin=${n[i]}
                fi
        fi
done

echo "The minimum number in the array is : $min"
echo "The second minimum number in the array is : $smin"
#========================================================================

#Problem 2: the above problem using sort
#Solution:
read -p "Enter the number of elements in the array" l
echo "Enter the elements in the array"
read -a n

echo "The array is :"
for((i=0; i<l; i++))
do
        echo ${n[i]}" "
done

max=${n[0]}
smax=${n[1]}

for ((i=0; i<l; i++))
do
for ((j=$i; j<l; j++))
do
if [ ${n[$i]} -gt ${n[$j]} ]
then
temp=${n[$i]}
n[$i]=${n[$j]}
n[$j]=$temp
fi
done
done

echo "sorted array : ${n[*]}"
#======================================================================

#Problem 3:Extend the prime factorization prog to store all the prime factors in an array
#Solution:
read -p "Enter a number:" n
cnt=0
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

                primeArray[((cnt++))]=$i

        fi
        fi
done
echo ${primeArray[*]}
#==================================================================================

#Problem 4:WAP to show sum of 3 integers adds to 0.
#solution:
read -p " Enter 3 integers :" n1 n2 n3
echo $n1 $n2 $n3

sum=$(($n1+$n2+$n3))
echo Sum is : $sum

if [[ $sum -eq 0 ]]
then
        echo " $n1+$n2+$n3 = 0 "
else
        echo " $n1+$n2+$n3 != 0 "
fi
#=================================================================================

#Problem 5: Take a range 0-100, find digits repeated twice(33,77) and store them in array.
#Solution:
cnt=0
for ((i=1; i<100; i++)) do
        n=$i
        a=$(($n/10))
        a1=$(($n%10))

        if [[ $a -eq $a1 ]]
        then
            twice[((cnt++))]=$i
        fi
done
echo ${twice[*]}


