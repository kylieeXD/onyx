#!/bin/bash

apt-get update
apt-get --assume-yes upgrade
apt-get --assume-yes install coreutils gnupg wget termux-api ncurses perl which
mkdir -p $PREFIX/etc/apt/sources.list.d
echo -e "deb https://nohajc.github.io termux extras" > $PREFIX/etc/apt/sources.list.d/termux-adb.list
wget -qP $PREFIX/etc/apt/trusted.gpg.d https://nohajc.github.io/nohajc.gpg
apt update
apt install termux-adb
