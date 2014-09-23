#!/bin/sh

total=0

while read tenpoid itemid date sales
do
    if [ $tenpoid = 000001 -a \
         $itemid  = 000002 -a \
         $date -ge 20140611120000 -a \
         $date -lt 20140611130000 ]
    then
         total=$(($total + $sales))
    fi
done < SALES

echo $total

