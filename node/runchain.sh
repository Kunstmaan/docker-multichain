#!/bin/bash -x

echo "Sleep for 30 seconds so the master node has initialised"
sleep 30

echo "Setup /root/.multichain/multichain.conf"
mkdir -p /root/.multichain/
cat << EOF > /root/.multichain/multichain.conf
rpcuser=$RPC_USER
rpcpassword=$RPC_PASSWORD
rpcallowip=$RPC_ALLOW_IP
rpcport=$RPC_PORT
EOF

echo "Start the chain"
IPADDR=`getent hosts $MASTER_NODE | awk -F' ' '{print $1}'`
multichaind -txindex -printtoconsole -shrinkdebugfilesize $CHAINNAME@$IPADDR:$NETWORK_PORT
