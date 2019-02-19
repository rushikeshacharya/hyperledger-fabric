#/bin/bash

CHAINCODE_NAME="fabcar"
CHAINCODE_SRC="/opt/gopath/src/github.com/chaincode/fabcar/node"
CHAINCODE_VERSION="1.0.0"
CHANNEL_NAME="mychannel"

docker exec Org1-cli peer chaincode query -C $CHANNEL_NAME -n $CHAINCODE_NAME -c '{"Args":["queryAllCars"]}'

#docker exec Org1-cli peer chaincode query -C $CHANNEL_NAME -n $CHAINCODE_NAME -c '{"Args":["queryCar","CAR05"]}'
