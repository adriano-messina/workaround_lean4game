#!/bin/sh

# now the messy part
######

# lean4

# change to the home directory
cd ~
# it is our directory where everything is placed
# since we assume we have a seperate user, this wouldn't conflict something

# install package manager for lean
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
# attention this script may be annoyed, if you didn't execute this in exact this way

# set the enviroment correct (i don't know why)
. $HOME/.elan/env

# now you have to add path to execute commands
export PATH="~/.elan/bin:$PATH"
# this is a very dangerous operation. 
# You should know what commands you add there 
# that they can be executed like "$ command" instead of "$ ./command"

# reload some values
. ~/.profile

# now let finally install a lean version that is stable
elan self update # first update then install
elan default leanprover/lean4:stable
# sadly we don't know which version we actually downloaded..
# but THAT SHOULD NOT BREAK something, right?

# lean4game

# change to the home directory
cd ~
# it is our directory where everything is placed
# since we assume we have a seperate user, this wouldn't conflict something

# install another package manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
# attention this script is annoyed, if you didn't execute this in exact this way
# my oppinion, a bad habit..

# then you should execute the nvm file (not sure if needed)
. ~/.nvm/nvm.sh

# as if it isn't messy enough, you have to set the following variable if you want to use nvm in a script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# i think it is clear why i wouldn't recommendent to use nvm

# now let nvm install node
nvm install node
# after so much code we can finally install what we need to install lean4game

# let us add the demo world, that you can see if it works
# download the world
git clone https://github.com/hhu-adam/GameSkeleton.git
# update (why?)
cd ~/GameSkeleton
lake update -R
# build it now
lake build
cd ~
# we build it

# download lean4game
git clone https://github.com/leanprover-community/lean4game.git

# change directory
cd lean4game

# install the game
npm install
# nope, there is a file missing
# and copy the file to the right destination
cp ~/lean4game/server/lake-manifest.json ~/lean4game/server/.lake/packages/Cli/lake-manifest.json
# try it again
npm install
# now we should be done..

# are we?


cd ~


# Yes we are done, now you can breath out.
