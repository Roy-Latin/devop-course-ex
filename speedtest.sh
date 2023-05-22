
#!/usr/bin/bash

# check for only 2 args and positive number for argument 1
if [ $# -ne '2' ]; then
    echo "please enter 2 args only"
    exit 1
fi

#taking the argumnets
NUM=$1 #args1
TIME=$2 #args2


COUNT=1

#running the loop
if [ $NUM -ne '0' ]; then
   while [ $COUNT -le $NUM ] ;
         do
            DAY=$(date +%F) #gets the day
            DATE=$(date +"%T") #gets the time
            DOWN=$(speedtest-cli | grep "Download" | grep -o " .* ") #gets the download speed
            UP=$(speedtest-cli | grep "Upload" | grep -o " .* ") #gets the upload speed
            echo "date: "$DAY "time: "$DATE" Download:"$DOWN"Upload:"$UP >>speedtest-logs.csv
            ((COUNT++))
            sleep $TIME
          done
else
   while [ $NUM == '0' ] ; #makes infifnte loop in case of the first arg equals to 0
         do
            DAY=$(date +%F) #gets the day
            DATE=$(date +"%T") #gets the time
            DOWN=$(speedtest-cli | grep "Download" | grep -o " .* ") #gets the download speed
            UP=$(speedtest-cli | grep "Upload" | grep -o " .* ") #gets the upload speed
            echo "date: "$DAY "time: "$DATE" Download:"$DOWN"Upload:"$UP >>speedtest-logs.csv
            ((COUNT++))
            sleep $TIME
        done
fi


echo "done, here are the speed test logs:"
tail -$NUM speedtest-logs.csv

