#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export ROOT_DIRECTORY=~/

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove

sudo apt-get remove -y modemmanager
sudo usermod -a -G dialout $USER

wget -O - https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim_nuttx.sh | bash

# End of File