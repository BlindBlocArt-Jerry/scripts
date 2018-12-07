#!/bin/bash
#This gets the snapshot file as argument and compares the amount in the CSV with what is on chain
CSV_FILE=$1

while IFS=',' read -r -a tmp;
do echo "Line "${tmp[0]} "has account name "${tmp[2]} "with amount "${tmp[4]}  " and the chain has ";
	./telcmd.sh get account "${tmp[2]}"  |grep "total:"; 
done <$CSV_FILE > /tmp/raw.data

paste -s -d' \n' /tmp/raw.data > /tmp/lines


awk -F ',' {'print $5'} $CSV_FILE > /tmp/csv_values
awk {'print $15'} /tmp/lines > /tmp/chain_values

echo "the total from the CSV file is"
awk '{s+=$1} END {printf "%8.4f", s}' /tmp/csv_values
echo ""
echo "The total on the chain is"
awk '{s+=$1} END {printf "%8.4f", s}' /tmp/chain_values


echo ""
echo "You can view /tmp/lines if the outputed numbers are not close"
