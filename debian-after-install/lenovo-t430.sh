#! /bin/bash

apt-get update
apt-get --yes --force-yes install deb-multimedia-keyring
apt-get update
apt-get --yes upgrade
apt-get --yes dist-upgrade

apt-get --yes --force-yes install vlc geany geany-plugins gimp-plugin-registry terminator \
guake mate-notification-daemon rar unrar parted gparted vim \
gnome-do network-manager network-manager-gnome rsync ntfs-config deluge inkscape wireless-tools mozo

apt-get --yes install firmware-linux firmware-linux-free firmware-linux-nonfree
apt-get --yes install firmware-iwlwifi
update-grub
