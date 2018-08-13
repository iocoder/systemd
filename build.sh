#!/bin/sh

# install dependencies
sudo pacman -Sy gobject-introspection gperf gtk-doc intltool kmod \
                hwids kbd kmod util-linux fakeroot binutils wget \
                autoconf automake pkg-config libtool gcc

# create eudev
mkdir eudev
cd eudev
wget https://aur.archlinux.org/cgit/aur.git/snapshot/eudev.tar.gz
tar -xzf eudev.tar.gz
cd eudev
makepkg
