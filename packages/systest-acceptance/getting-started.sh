#!/bin/bash

# Exit on first error, print all commands.
set -ev


# Grab the root (parent) directory.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"


docker rm -f $(docker ps -aq) || true

# Install cli
npm install -g composer-cli

cd "$DIR"

TMP=$DIR/tmp

mkdir -p "$TMP"

cd "$TMP"

git clone "$(git rev-parse --show-toplevel)" composer-sample-applications

GETTING_STARTED=$TMP/composer-sample-applications/packages/getting-started

cd "$GETTING_STARTED"

npm install

npm test

#composer network list -p hlfv1 -n digitalproperty-network --enrollId admin --enrollSecret adminpw
composer network list -p hlfv1 -n medrec-network --enrollId admin --enrollSecret adminpw

# Leave Composer-GettingStarted back to tmp
cd "$TMP"

#git clone https://github.com/hyperledger/composer-sample-networks
git clone https://github.com/jogando/composer-sample-networks

#cd "$TMP/composer-sample-networks/packages/digitalproperty-network"
cd "$TMP/composer-sample-networks/packages/medrec-network"

npm install


#composer archive create --sourceType dir --sourceName . --archiveFile digitalproperty-network.bna
composer archive create --sourceType dir --sourceName . --archiveFile medrec-network.bna

#composer network update --connectionProfileName hlfv1 --archiveFile digitalproperty-network.bna  --enrollId admin --enrollSecret adminpw
composer network update --connectionProfileName hlfv1 --archiveFile medrec-network.bna  --enrollId admin --enrollSecret adminpw

npm test

cd "$GETTING_STARTED"

#npm run submitTransaction

rm -rf "$TMP"
