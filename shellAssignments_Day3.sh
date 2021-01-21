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
#=================================================================================  

#Problem 2: Append current data to all log files name which has extension .log.1 from a folder

#Solution: 
touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.

for file in `ls *.log.1`
do
        folder=`echo $file | awk -F . '{print $1}'`
        echo $folder
        dt=`echo $(date +'%d%m%y')`
        app=`echo $folder-$dt`
        mv $file $app.log


done
#==================================================================================

#Problem 3: Chcek if a folder exists or not. iF it's not present, create it.
#Solution: 
if [ -d newDir ]
then
        echo "This folder already exists."
else
        mkdir newDir
        echo "Folder created."
fi
#==================================================================================
#Problem 4: Execute command "hello" and "ls" and check its execution status and print whether command executed successfully or not.
#Solution:
 h=`hello`

if [ $? -eq 0 ]
then
        echo "Command executed successfully."

else
        echo "Command did not execute."
fi

l=`ls`

if [ $? -eq 0 ]
then
        echo "ls Command executed successfully."

else
        echo "Command did not execute."
fi
#==================================================================================
#Problem 5: Set Environment usersecret="dH34xJaa23" if its already not set
#Solution: 
len=`echo $userSecret`

if [ ${#len}==0 ]
then
        value="dH34xJaa23"
        set usersecret=$value
        echo "Value set to userSecret."
else
        echo "env userSecret already set."
fi
#==================================================================================

#Problem 6: Archive the files from /var/log folder which have modified 7 days ago and move it to your backup folder
#Solution:
 bckup="/E/JasTerminalCmds/backup"
for file in `find /var/log -type f -mtime +7`
do
	cp $file $ bckup
done
#==================================================================================

#Problem 7: Print last 4 frequently access urls count in sorted order from /var/log/httpd/access.log
#Solution: 
cat /E/JasTerminalCmds/linux-content/access.log | awk '{print $11}' | sort | sort -u | head -4
#==================================================================================

#Problem 8: Print list of last 4 frequently access unique urls at partucular hours from /var/log/httpd/access.log
#Solution: 
cat /E/JasTerminalCmds/linux-content/access.log | awk '{print $4 “ “ $11}' | sort | sort -u | head -4
#==================================================================================

#Problem 9: Print list of web response code count in the unique sorted at specific hours
#Solution:
 echo |cat access.log | awk '{print $9}' | sort | uniq -u | sort -r |head -4
#==================================================================================

#Problem 10: Print list of 10 unique sorted client IP /var/log/httpd/access.log
#Solution: cat access.log | awk '{if (NR!=1) {print substr($16, 2, length($16)-2)}}' | sort -r | head -10
#==================================================================================

#Problem 11: Data Analysis / awk
#Solution:

1.	cat data.csv | awk '{if($4>10000) print $2" : "$7}'


2.	cat data.csv | awk '{if($3=="CAPTAIN")sum += $7}END{print "Aggregate Pay : " 


3.	cat data.csv | awk '{if($5>7000 && $5<10000) print $3" "$5}'


4.	cat data.csv | awk '{sum += $4; nr +=1}END {print "Average BasePay" sum/nr}'
#==================================================================================


#Problem 12: Move Files to the respective folder.
#Solution:
 echo |cat access.log | awk '{print $9}' | sort | uniq -u | sort -r |head -4
#==================================================================================

#Problem 13: Find a word "systemd" from all log files in the folder /var/log and print number of occurence more than 0 against each file.
#Solution:
 for log in `ls /var/log/*.log`
do
	cnt=`grep -c 'systemd' $log`
	if [ $cnt -gt 0 ]
	then
		echo $cnt
	fi
done
#==================================================================================

#Problem 14: Get User from /etc/passwd and change ownership of user's home 
#Solution:
 paths=`cat /etc/passwd | awk -F: '{if($4 > 1000) print $7}'`
lcnt=`echo "$paths" | wc -l`
for path in $paths
do
dircontent=`ls -l $path`
sudo chown $USER:$USER $path
echo -e "$path : $dircontent"
done
#==================================================================================


#Problem 15: Find the difference between original file and the updated file. Apply changes to the original file.
#Solution:
#! /bin/bash
diff=`diff -iEZ ~/E/JasTerminalCmds/linux-content/stage1/original/original_file.sh ~/E/JasTerminalCmds/linux-content/stage1/updated/updated_file.sh`
echo ${#diff}
if [ ${#diff} -gt 0 ]
then
        echo "There is Difference in Files"
        cp  ~/E/JasTerminalCmds/linux-content/stage1/original/original_file.sh ~/E/TerminalCmds/linux-content/stage1/updated/updated_file.sh`


        echo "applied changes to UpdatdeFolder"
else
        echo "No difference!! "
fi
if [ -d 'original_backup' ]
then
        cp ~/E/JasTerminalCmds/linux-content/stage1/original/original-file.sh ~/E/JasTerminalCmds/linux-content/stage1/original-backup
else
        mkdir original_backup
        cp ~/E/JasTerminalCmds/linux-content/stage1/original/original-file.sh ~/Desktop/TerminalCommands/linux-content/stage1/original-backup
fi
diff2=`diff -iEZ ~/E/JasTerminalCmds/linux-content/stage1/original_backup/original_file.sh ~/E/JasTerminalCmds/linux-content/stage1/updated/updated_file.sh`
if [ ${#diff2} == 0 ]
then
        echo "Changes Applied Successfully.... Backup Created!"
else
        echo "Difference in updated - backup"
fi










