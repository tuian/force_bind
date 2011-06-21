#!/bin/sh

export FORCE_BIND_ADDRESS_V4=127.0.0.2

# use -1 to not change port
export FORCE_BIND_PORT_V4=900

export LD_PRELOAD="${LD_PRELOAD}:./force_bind.so"

strace -o test1.strace -s100 -f "$@"
