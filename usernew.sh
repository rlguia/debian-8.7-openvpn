#!/bin/bash
#Script auto create user SSH

clear
echo -e ""
echo -e ""
read -p "Username        : " Login
read -p "Password        : " Pass
read -p "How Many Days?  : " masaaktif

IP=$(wget -qO- ipv4.icanhazip.com)
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e ""
echo -e ""
echo -e "======Account Information======"
echo -e ""
echo -e "Username        : $Login "
echo -e "Password        : $Pass"
echo -e "Expires on      : $exp"
echo -e ""
echo -e "==============================="
echo -e ""
echo -e ""
echo -e ""
