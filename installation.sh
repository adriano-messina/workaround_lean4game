#!/bin/sh

# Script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# Create a user for the lean4game server
adduser lean4game
# strongly recommendent, since lean4 / lean4game has poor installer


# Lean4, Lean4game needs some dependecies that are sadly not explicitly listet in their documentation
# so there are they:
sudo apt install git curl cmake make cpp g++
# maybe not everything is needed, but since it worked on a fresh Ubuntu 22.04 LTS install, it should be fine
# if you had installed those you don't need root privileges


# execute the part that not need sudo, luckyly
sudo -u lean4game sh $SCRIPT_DIR/.installation_without_sudo.sh
