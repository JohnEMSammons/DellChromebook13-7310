#!/bin/bash
localectl set-x11-keymap us chromebook
sudo apt update
sudo apt upgrade
sudo rm -f /usr/bin/kblight
sudo ln -s $PWD/kblightdb /usr/bin/kblight
./importkeys.sh
sudo apt install -y libcanberra-gtk-module libcanberra-gtk3-module
