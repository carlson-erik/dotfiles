#!/bin/bash

# Install and enable an easier way to manage gnome extensions
sudo apt install -y gnome-shell-extension-manager pipx
pipx install gnome-extensions-cli --system-site-packages

# Turn off default Ubuntu extensions
gnome-extensions disable tiling-assistant@ubuntu.com
gnome-extensions disable ubuntu-dock@ubuntu.com
gnome-extensions disable ubuntu-appindicators@ubuntu.com
gnome-extensions disable ding@rastersoft.com

# Install extensions
gext install just-perfection-desktop@just-perfection
gext install space-bar@luchrioh
gext install tophat@fflewddur.github.io
