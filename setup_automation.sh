#! /bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

if [ $(id -u) -eq 0 ];then
  echo -e "\e[33m Do not run as root \e[0m" >&2
  exit 1
fi

read -p ">  Do you run setup? This will take a while. (y/N)? " answer

case $answer in
  [yY]* )
    echo -e "\e[32m Setup Continue... \e[0m"
    dpkg -l | grep ansible
    if [ $? -eq 1 ]; then
      sudo apt install -y ansible
    fi

    ansible-playbook -vv -i ./$SCRIPT_DIR/inventories/localhost.ini, $SCRIPT_DIR/ansible/setup.yml --ask-become-pass
    echo -e "\e[32m Complete \e[0m"
    ;;
  [nN]* )
    echo -e "\e[33m error: Setup Canceled \e[0m"
    exit 0
    ;;
  *)
    echo -e "\e[33m error: undefined keys \e[0m"
    exit 1
    ;;
esac
