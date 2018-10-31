#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

STREAMPORT=$1
DISPLAYIP=$2
DISPLAYPORT$3

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

cd $HOME/
ip a
python3 facedetect.py $STREAMPORT $DISPLAYIP $DISPLAYPORT
