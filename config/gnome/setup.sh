#!/bin/bash

# Install extensions if need be
if [[ $1 == "--install" ]]; then
  echo "[SETUP] Installing Extensions"
  ./extensions/install.sh
fi

# Configure all extensions I've installed
echo "[SETUP] Configuring Extensions"
./extensions/config.sh

# Configure gnome settings
echo "[SETUP] Configuring Gnome Settings"
./settings.sh

echo "[SETUP] Configuring Gnome Keybindings"
./keybindings.sh
