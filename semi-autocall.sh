#!/bin/zsh
while read row; do
    Name=`echo ${row} | cut -d , -f 1`
    PhoneNumber=`echo ${row} | cut -d , -f 2`
    open facetime://" & "${PhoneNumber}
    read -s -k '?Press any key to continue.
'
done < phone.csv
