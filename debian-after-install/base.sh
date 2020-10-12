#! /bin/bash

# update
apt-get update
apt-get --yes --force-yes install deb-multimedia-keyring
apt-get update
apt-get --yes upgrade
apt-get --yes dist-upgrade

#server x
apt-get --yes install xorg

#suggested packages server x
apt-get --yes install mesa-utils xfs xorg-docs gpointing-device-settings xinput

#mate-desktop
apt-get --yes install mate-desktop-environment-extra

#display manager
apt-get --yes install lightdm

#basic apps
apt-get --yes --force-yes install vlc geany geany-plugins gimp-plugin-registry terminator \
guake mate-notification-daemon rar unrar parted gparted flashplugin-nonfree \
gnome-do network-manager network-manager-gnome rsync ntfs-config deluge inkscape wireless-tools mozo

apt-get --yes install firmware-linux firmware-linux-free firmware-linux-nonfree
apt-get --yes install firmware-iwlwifi
update-grub
