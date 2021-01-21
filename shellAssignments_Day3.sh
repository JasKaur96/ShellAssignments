# Problem 1: Move Files to the respective folder.
# Solution: 

mkdir abc.txt def.txt ghi.txt jkl.txt
  for file in `ls *.txt`
  do
    folder=`echo $file | awk -F . '{print $1}'`
    echo $folder
    mkdir $folder
    mv $file $folder
  done
