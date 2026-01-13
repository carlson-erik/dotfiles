#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Switch theme based on script parameters. Defaults to DARK if none passed.
if [[ $1 == "" || $1 == "DARK" ]]; then
  SOURCE_DIR="${SCRIPT_DIR}/catppuccin-mocha"
else
  SOURCE_DIR="${SCRIPT_DIR}/catppuccin-latte"
fi

# Copy the joplin-desktop css files to the config folder
cp -a "${SOURCE_DIR}"/*.css ~/.config/joplin-desktop/
