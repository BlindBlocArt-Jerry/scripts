#!/bin/bash


./stop.sh
cp -r blocks blockstemp
cp -r state statetemp
./start.sh
rm backup.tar.gz.1
mv backup.tar.gz backup.tar.gz.1
tar czvf backup.tar.gz blockstemp statetemp
rm -rf blockstemp
rm -rf statetemp

