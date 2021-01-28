
i=0
while true
do
   dice=$((RANDOM%6+1))
   echo $dice

   arr[i]=$dice

   
   if [[ ${arr[i]} -eq 10 ]]
   then
      echo ${arr[i]}
   fi
   ((i++))
   if [[ $dice -eq 6 ]]
	then
		cnt6+=1
	if [[ $cnt6 -eq 10 ]]
	then
	break;
	fi
    fi
   if [[ $dice -eq 5 ]]
        then
              cnt5+=1
         if [[ $cnt5 -eq 10 ]]
        then
        break;
	fi
    fi
 if [[ $dice -eq 5 ]]
        then
              cnt5+=1
         if [[ $cnt5 -eq 10 ]]
        then
        break;
        fi
    fi
 if [[ $dice -eq 4 ]]
        then
              cnt4+=1
         if [[ $cnt4 -eq 10 ]]
        then
        break;
        fi
    fi


 if [[ $dice -eq 3 ]]
        then
              cnt3+=1
         if [[ $cnt3 -eq 10 ]]
        then
        break;
        fi
    fi
 if [[ $dice -eq 2 ]]
        then
              cnt2+=1
         if [[ $cnt2 -eq 10 ]]
        then
        break;
        fi
    fi
 if [[ $dice -eq 1 ]]
        then
              cnt1+=1
         if [[ $cnt1 -eq 10 ]]
        then
        break;
        fi
    fi

done
for key in ${!arr[@]}; do
    echo ${key} ${arr[${key}]}
done

echo "Last one: "$cnt1 $cnt2 $cnt3 $cnt4 $cnt5 $cnt6




