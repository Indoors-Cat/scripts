#!/usr/bin/env bash

###If using timeshift btrfs snapshots, take a snapshot now:
sudo timeshift --create --comments "Before Update" &&

###Update Arch Package(s):
sudo pacman -Syu &&

#####Select AUR helper of choise & uncomment line:
###Update AUR package(s) using paru:
#paru -Syu &&

###Update AUR package(s) using yay:
#yay -Syu &&

###Update AUR package(s) using aura:
#aura -Syu &&

exit 0
