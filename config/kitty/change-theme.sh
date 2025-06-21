#!/bin/bash

# Remove old conf file
rm ~/.config/kitty/kitty.conf
# Create a new conf file
touch ~/.config/kitty/kitty.conf

# Switch theme based on script parameters. Defaults to DARK if none passed.
if [[ $1 == "" || $1 == "DARK" ]]; then
  echo "# Dark theme" >> ~/.config/kitty/kitty.conf
  echo "include ./themes/mocha.conf" >> ~/.config/kitty/kitty.conf
else
  echo "# Light theme" >> ~/.config/kitty/kitty.conf
  echo "include ./themes/latte.conf" >> ~/.config/kitty/kitty.conf
fi

# Includes configuration file with my changes
echo " " >> ~/.config/kitty/kitty.conf
echo "# My config" >> ~/.config/kitty/kitty.conf
echo "include ./main.conf" >> ~/.config/kitty/kitty.conf
