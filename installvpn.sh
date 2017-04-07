#!/bin/bash

sudo sed -i 's/^dns=dnsmasq/#&/' /etc/NetworkManager/NetworkManager.conf # disable dnsmasq
sudo apt-get remove strongswan # remove strongswan if it exists
sudo apt-get install gksu libgksu2-0 libengine-pkcs11-openssl libp11-2 xl2tpd iproute -y # install dependencies
sudo dpkg -i libctemplate2_2.2-3_amd64.deb # install old libctemplate from .deb
sudo dpkg -i openswan_2.6.38-1_amd64.deb # install openswan, the deprecated version of strongswan
sudo dpkg -i l2tp-ipsec-vpn-daemon_0.9.9-1_amd64.deb # install the l2tp ipsec daemon
sudo dpkg -i l2tp-ipsec-vpn_1.0.9-1_amd64.deb # install l2tp ipsec manager

echo ""
echo "YOU MUST REBOOT FOR CHANGES TO TAKE EFFECT."
