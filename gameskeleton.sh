#!/bin/sh

# check if it has an input
if [ -z "$1" ]
  then
    echo "please enter a git-url to your gameskeleton"
    exit 1
fi
if [ -z "$2" ] || [ ! -d "$2" ]
  then
    echo "please enter the right diectory name to your gameskeleton"
    exit 1
fi

# Script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# execute the command that is really needed
sudo -u lean4game $SCRIPT_DIR/.gameskeleton_without_sudo.sh $1 $2
