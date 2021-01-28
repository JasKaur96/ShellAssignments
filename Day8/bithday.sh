for (( i=1  ; $i <= 50 ; i++ ))
do
rand=$(($RANDOM%12 ))
rand1=$(( $rand + 1 ))
arr[$i]=$rand1
done


for i in "${!arr[@]}"
do
        if [ ${arr[i]} -eq 1 ]
        then
        echo "Individuals having birthday in the 1 -" $i
        elif  [ ${arr[i]} -eq 2 ]
        then
        echo "Individuals having birthday in the month 2 -" $i
        elif  [ ${arr[i]} -eq 3 ]
        then
        echo "Individuals having birthday in the month 3 -" $i
        elif  [ ${arr[i]} -eq 4 ]
        then
        echo "Individuals having birthday in the month 4 -" $i
        elif  [ ${arr[i]} -eq 5 ]
        then
        echo "Individuals having birthday in the month 5 -" $i
        elif  [ ${arr[i]} -eq 6 ]
        then
        echo "Individuals having birthday in the month 6 -" $i
        elif  [ ${arr[i]} -eq 7 ]
        then
        echo "Individuals having birthday in the month 7 -" $i
        elif  [ ${arr[i]} -eq 8 ]
        then
        echo "Individuals having birthday in the month 8 -" $i
        elif  [ ${arr[i]} -eq 9 ]
        then
        echo "Individuals having birthday in the month 9 -" $i
        elif  [ ${arr[i]} -eq 10 ]
        then
        echo "Individuals having birthday in the month 10 -" $i
	 elif  [ ${arr[i]} -eq 11 ]
        then
        echo "Individuals having birthday in the month 11 -" $i
        elif  [ ${arr[i]} -eq 12 ]
        then
        echo "Individuals having birthday in the month 12 -" $i
        fi


done


