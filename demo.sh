#!/bin/sh

# Script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Install
sudo sh $SCRIPT_DIR/installation.sh

# Add GameSkeleton
sudo sh $SCRIPT_DIR/gameskeleton.sh "https://github.com/hhu-adam/GameSkeleton.git"

# Start
sudo sh $SCRIPT_DIR/run.sh
