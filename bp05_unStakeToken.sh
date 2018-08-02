#!/bin/bash
# Argument is quantity to unstake
./unlock
./telcmd.sh system undelegatebw {Producer_Name} {Producer_Name} "$1.0000 TLOS" "$1.0000 TLOS" -p {Producer_Name}
