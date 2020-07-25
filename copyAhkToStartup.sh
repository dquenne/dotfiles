#!/bin/bash

# this is intended to be run from Window Subsystem Linux 1 (WSL1)

USER="Dylan"

WIN_STARTUP_DIR="/mnt/c/Users/$USER/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"

AHK_SUBDIR='autohotkey'
DIR=$(dirname "$0")
PARENT_PATH=$(pwd -P)
AHK_DIR="${PARENT_PATH}/${DIR}/${AHK_SUBDIR}"

# generate mappings for Cmd+*
CMD_MAPS_GENERATOR='genCmdMaps.sh'

"${AHK_DIR}/${CMD_MAPS_GENERATOR}"


# copy to startup directory

cp $AHK_DIR/*.ahk "$WIN_STARTUP_DIR"
