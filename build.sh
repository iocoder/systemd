#!/bin/sh

# install dependencies
sudo pacman -Sy gobject-introspection gperf gtk-doc intltool kmod
sudo pacman -Sy hwids kbd kmod util-linux
sudo pacman -Sy fakeroot binutils wget

# create eudev
mkdir eudev
cd eudev
wget https://aur.archlinux.org/cgit/aur.git/snapshot/eudev.tar.gz
tar -xzf eudev.tar.gz
cd eudev
makepkg
