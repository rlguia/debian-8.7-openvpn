#!/bin/bash
# Script restart service dropbear, webmin, squid3, openvpn, openssh
# 
clear
echo -e ""
echo -e ""
echo -e "Restart VPS"
echo -e ""
echo -e ""
echo -e ""
service dropbear restart
service webmin restart
service squid3 restart
service openvpn restart
service ssh restart
