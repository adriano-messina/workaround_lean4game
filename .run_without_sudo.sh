#!/bin/sh

# change directory
cd ~


# as if it isn't messy enough, you have to set the following variable if you want to use nvm in a script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# i think it is clear why i wouldn't recommendent to use nvm
cd lean4game

# start the game server
npm start
