#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

CONNECTION=$1
VEHICLEID=$2
ALTITUDE=$3

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

cd $HOME/
python takeoff.py --connect=${CONNECTION} --id=${VEHICLEID} --alt=${ALTITUDE}