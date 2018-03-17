#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export MAIN_PID=$$
export MAIN_PID_PATH="/tmp/main"
export MAIN_DIRECTORY=`dirname "$(readlink -f "$0")"`
export MAIN_ARGUMENT_ACTION=$1

export JMAVSIM=$MAIN_DIRECTORY/VirtualDroneSolution/FlightCode/SoftwareInTheLoop/JMAVSim/
export SIMVEHICLE=$MAIN_DIRECTORY/VirtualDroneSolution/FlightCode/SoftwareInTheLoop/ArdupilotSitl/
export QGROUNDCONTROL=$MAIN_DIRECTORY/VirtualDroneSolution/GroundControlStation/

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

export PATH=$PATH:$JMAVSIM
export PATH=$PATH:$SIMVEHICLE
export PATH=$PATH:$QGROUNDCONTROL

# End Of File