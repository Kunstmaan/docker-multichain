#!/bin/bash -x

sleep 30

ip=`getent hosts masternode | awk -F' ' '{print $1}'`
multichaind dockerchain@$ip:7447 -daemon

sleep 30

echo "rpcport=8000" >> /root/.multichain/dockerchain/multichain.conf
cp /root/.multichain/dockerchain/multichain.conf /root/.multichain/multichain.conf

python -m Mce.abe --config /root/explorer.conf --commit-bytes 100000 --no-serve
python -m Mce.abe --config /root/explorer.conf
