#!/bin/bash 
printf "|---------------start---------------|"\
printf "|-- set current user password     --|"\
sudo passwd $(id -u -n) &&\
printf "|-----------------------------------|"\
printf "|-- update & uppgrade             --|"\
sudo apt-get -y update && sudo apt-get -y update &&\
printf "|-----------------------------------|"\
printf "|-- install min software          --|"\
sudo apt-get -y install curl wget zsh git &&\
printf "|-----------------------------------|"\
printf "|-- install oh-my-zsh             --|"\
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&\
printf "|-----------------------------------|"\
printf "|-- install rvm & stable ruby     --|"\
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \curl -sSL https://get.rvm.io | bash -s stable --ruby && source /home/$(id -u -n)/.rvm/scripts/rvm \
printf "|-----------------end---------------|"\