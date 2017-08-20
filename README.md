# ethereum-privatechain-node
Quick docker setup for a privatechain node that auto mines

Uses: https://github.com/amacneil/gethdev (We can roll our own easily if needed)

## Docker
Local instance: `docker run -p 127.0.0.1:8545:8545 gcr.io/rehive-services/geth-private-node /bin/sh -c "geth -dev & gethdev -rpc --rpccorsdomain '*' --rpcaddr '0.0.0.0' --ipcpath /tmp/ethereum_dev_mode/geth.ipc --datadir /tmp/ethereum_dev_mode/geth/chaindata js /usr/gethdev.js" -d`
