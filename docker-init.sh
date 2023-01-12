#!/bin/bash
## run the vTune Server and listen on port 9443
CONTAINER_ALREADY_STARTED="CONTAINER_ALREADY_STARTED_PLACEHOLDER"
if [ ! -e $CONTAINER_ALREADY_STARTED ]; then
    touch $CONTAINER_ALREADY_STARTED
    echo "-- First container startup --"
    /opt/intel/oneapi/vtune/latest/bin64/vtune-backend --web-port=9443 --allow-remote-access --reset-passphrase
else
    echo "-- Not first container startup --"
fi