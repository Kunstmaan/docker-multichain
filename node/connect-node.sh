#!/bin/bash -x

sleep 30

ip=`getent hosts masternode | awk -F' ' '{print $1}'`
multichaind dockerchain@$ip:7447 -printtoconsole -shrinkdebugfilesize
