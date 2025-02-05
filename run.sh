#!/bin/sh

# Script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# execute the command that is really needed
sudo -u lean4game sh $SCRIPT_DIR/.run_without_sudo.sh
