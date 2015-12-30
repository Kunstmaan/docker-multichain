# docker-multichain

This is the repository for the kunstmaan/*-multichain docker images.

## Images

* [kunstmaan/base-multichain](https://hub.docker.com/r/kunstmaan/base-multichain/): A base Ubuntu with the latest Multichain deamon installed
* [kunstmaan/master-multichain](https://hub.docker.com/r/kunstmaan/master-multichain/): Based on the "base" image running a master node, creates a blockchain and runs it. *Important: only for development since any node can connect, anyone can administer and the RPC interface is open to all.
* [kunstmaan/node-multichain](https://hub.docker.com/r/kunstmaan/node-multichain/): Based on the same "base" image and connects to the master node

## Running the cluster

Use this [docker-compose.yml](https://github.com/Kunstmaan/docker-multichain/blob/master/docker-compose.yml) and run:

```
sudo docker-compose up
```
