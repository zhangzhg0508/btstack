#!/bin/sh
BINARY=$1
if [ X$BINARY = "X" ]; then
	echo "Usage: $0 path/to/app.hex"
	exit 0
fi
nrfjprog --eraseall -f nrf52
echo "Flashing $BINARY"
nrfjprog --program $BINARY -f nrf52
nrfjprog --reset -f nrf52
