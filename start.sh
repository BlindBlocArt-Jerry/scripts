#!/bin/bash
NODEOS=../telos/build/programs/nodeos/nodeos
DATADIR=`pwd`
$DATADIR/stop.sh
$NODEOS --data-dir $DATADIR --config-dir $DATADIR "$@"  &> $DATADIR/tlos.log &  echo $! > $DATADIR/nodeos.pid
