#!/bin/sh

# Script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# Create a user for the lean4game server
sudo adduser lean4game --gecos "" --disabled-password
# strongly recommendent, since lean4 / lean4game has poor installer

# Lean4, Lean4game needs some dependecies that are sadly not explicitly listet in their documentation
# so there are they:
sudo apt install git curl cmake make cpp g++
# maybe not everything is needed, but since it worked on a fresh Ubuntu 22.04 LTS install, it should be fine
# if you had installed those you don't need root privileges

# create a copy of all files for the lean4game user in his homedirectory
cd ~lean4game
sudo -u lean4game git clone https://github.com/adriano-messina/workaround_lean4game.git
cd $SCRIPT_DIR

# execute the part that not need sudo, luckyly
sudo -u lean4game sh ~lean4game/workaround_lean4game/.installation_without_sudo.sh
