#!/bin/bash

if [[ $1 == "--install" ]]; then
  echo "[SETUP] Installing Extensions"
  ./install-ext.sh
fi

echo "[SETUP] Configuring Extensions"
./config-ext.sh

echo "[SETUP] Configuring Keybindings"
./keybindings.sh
