#!/bin/zsh
while read row; do
    Name=`echo ${row} | cut -d , -f 1`
    PhoneNumber=`echo ${row} | cut -d , -f 2`
    open tel://" & "${PhoneNumber}
    read -s -k 1 emotion\?'反応は？ >'
    echo  "$Name さんは $emotion"
    echo "$Name, $PhoneNumber,  $emotion" >> emotion.csv
done < phone.csv
