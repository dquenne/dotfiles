#!/bin/bash

# this is intended to be run from Window Subsystem Linux 1 (WSL1)

USER="Dylan"

WIN_STARTUP_DIR="/mnt/c/Users/$USER/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"

AHK_SUBDIR='autohotkey'
DIR=$(dirname "$0")
PARENT_PATH=$(pwd -P)
AHK_DIR="$PARENT_PATH/$DIR/$AHK_SUBDIR"
AHK_STARTUP_DIR="$AHK_DIR/startup"

# generate mappings for Cmd+*
CMD_MAPS_GENERATOR="$AHK_DIR/genCmdMaps.sh"
"$CMD_MAPS_GENERATOR" "$AHK_STARTUP_DIR/macCmdGenerated.ahk"

# copy to Windows startup directory
cp $AHK_STARTUP_DIR/*.ahk "$WIN_STARTUP_DIR"
