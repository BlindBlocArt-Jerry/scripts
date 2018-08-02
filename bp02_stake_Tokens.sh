#!/bin/bash
# This will take an argument to get the amount
./unlock
./telcmd.sh system delegatebw {Producer_Name} {Producer_Name} "$1.0000 TLOS" "$1.0000 TLOS" -p {Producer_Name}
