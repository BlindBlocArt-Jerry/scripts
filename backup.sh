#!/bin/bash


./stop.sh
cp -r blocks blockstemp
cp -r state statetemp
./start.sh
rm backup.tar.gz
tar czvf backup.tar.gz blockstemp statetemp
rm -rf blockstemp
rm -rf statetemp
