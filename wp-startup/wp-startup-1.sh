#!/bin/bash
#apacheとMySQLの初期設定

#おまじない
pwd
whoami
hostname;ifconfig;uname -a; df -k;cat /etc/debian_version
chkconfig --list | grep on

#タイムゾーンの変更
echo 'Asia/Tokyo' | sudo tee /etc/timezone“ > /dev/null
sudo cp -p /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# 各種Apache,PHP(APC)をインストール
sudo apt-get -y install apache2
sudo apt-get -y install php7.0 libapache2-mod-php7.0 php7.0-mysql php-pear php7.0-gd
sudo apt-get -y install unzip mysql-client

