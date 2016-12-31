#!/bin/sh
geth --rpc --rpcapi "web3,eth" --rpccorsdomain "http://localhost:8000" --testnet --fast --cache=1024 --jitvm console
