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


# download the game
git clone "$1"

# now we should know the foldername
cd "$2"

# the same thing again...
# set the enviroment correct (i don't know why)
. $HOME/.elan/env

# now you have to add path to execute commands
export PATH="~/.elan/bin:$PATH"
# this is a very dangerous operation. 
# You should know what commands you add there 
# that they can be executed like "$ command" instead of "$ ./command"

# reload some values
. ~/.profile


# try to build it
lake update -R # maybe not necessary
lake build

# hope it is enough
