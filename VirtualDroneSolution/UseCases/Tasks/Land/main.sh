#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

IPADDRESS=$1
PORT=$2
VEHICLEID=$3

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

cd $HOME/
python land.py --connect=tcp:${IPADDRESS}:${PORT} --id=${VEHICLEID}
