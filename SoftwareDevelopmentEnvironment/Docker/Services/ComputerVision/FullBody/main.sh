#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

NAME=$1
STREAMPORT=$2
DISPLAYIP=$3
DISPLAYPORT=$4
HAPORT=$5

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

#cd $HOME/
ip a
echo $NAME $STREAMPORT $DISPLAYIP $DISPLAYPORT
sleep 5
python3 fullbody.py $NAME $STREAMPORT $DISPLAYIP $DISPLAYPORT $HAPORT
