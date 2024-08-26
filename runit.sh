#!/bin/bash
#root require

apt update -y && apt upgrade -y
apt install sudo curl wget nano
sudo timedatectl set-timezone Asia/Taipei
timedatectl
bash <(wget -qO- https://github.com/iscodeminister/linuxvps/raw/main/tune.sh) -t
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
