#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

export DIRECTORY_BITOL=Bitol

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

# wget -O - https://raw.githubusercontent.com/TheIoTLearningInitiative/Bitol/master/SoftwareDevelopmentEnvironment/Main.sh | sh

cd $HOME

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y

sudo apt install -y tree
sudo apt install -y jstest-gtk
sudo apt install -y gpsd gpsd-clients

sudo apt install -y git

if [ -d "$DIRECTORY_BITOL" ]
then
    cd $DIRECTORY_BITOL
    git pull
else
    git clone https://github.com/TheIoTLearningInitiative/Bitol.git
fi

cd $HOME

# End of File
