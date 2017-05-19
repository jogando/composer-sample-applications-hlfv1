#!/bin/bash

# Exit on first error, print all commands.
set -ev

cd ../../medrec-network

composer archive create --sourceName medrec-network --archiveFile medrec-network.bna .
composer network deploy --archiveFile medrec-network.bna  -p medrec -i admin -s adminpw
composer network list -n medrec-network -p medrec -i admin -s adminpw