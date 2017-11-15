#!/bin/bash
minergate-cli -user nahapet_h@yahoo.com -xmr -fcn &
p=$!
sleep 6600
kill -9 $p
