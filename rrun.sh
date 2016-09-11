#!/bin/bash 
printf "|---------------start---------------|\n"
printf "|-- set current user password     --|\n"
sudo passwd $(id -u -n) &&\
printf "|-----------------------------------|\n"
printf "|-- update & uppgrade             --|\n"
sudo apt-get -y update && sudo apt-get -y update &&\
printf "|-----------------------------------|\n"
printf "|-- install min software          --|\n"
sudo apt-get -y install nano curl wget zsh git libgmp-dev nginx &&\
printf "|-----------------------------------|\n"
printf "|-- install rvm & stable ruby     --|\n"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 &&\
curl -sSL https://get.rvm.io | bash -s stable --ruby &&\
source /home/$(id -u -n)/.rvm/scripts/rvm &&\
gem install rails \
printf "|-----------------------------------|\n"
printf "|-- install oh-my-zsh             --|\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&\
printf "|-----------------------------------|\n"
printf "|--------------end------------------|\n"
  
