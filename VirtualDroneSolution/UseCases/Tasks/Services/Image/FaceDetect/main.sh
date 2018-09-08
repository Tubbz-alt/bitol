#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

DEVICE_PORT_UDP_IN=$1
SERVER_IP=$2
SERVER_PORT_UDP_OUT=$3

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

pwd
ls
cd $HOME/
python3 facedetect.py ${DEVICE_PORT_UDP_IN} ${SERVER_IP} ${SERVER_PORT_UDP_OUT}
