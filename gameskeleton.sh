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

# execute the command that is really needed
sudo -u lean4game sh ~lean4game/workaround_lean4game/.gameskeleton_without_sudo.sh $1 $2
