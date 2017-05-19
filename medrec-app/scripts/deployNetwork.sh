#!/bin/bash

# Exit on first error, print all commands.
set -ev

composer archive create --sourceName medrec-network --sourceType module --archiveFile medrec-network.bna
composer network deploy --archiveFile medrec-network.bna  -p medrec -i admin -s adminpw
composer network list -n medrec-network -p medrec -i admin -s adminpw