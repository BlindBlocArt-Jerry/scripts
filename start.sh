#!/bin/bash
NODEOS=../telos/build/programs/nodeos/nodeos
DATADIR=`pwd`
$DATADIR/stop.sh
$NODEOS --data-dir $DATADIR --config-dir $DATADIR "$@" > 2>&1 $DATADIR/tlos.log &  echo $! > $DATADIR/nodeos.pid
