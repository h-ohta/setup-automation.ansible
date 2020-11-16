#! /bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

if [ $(id -u) -eq 0 ];then
  echo "Do not run as root" >&2
  exit 1
fi

read -p ">  Do you run setup? This will take a while. (y/N)? " answer

case $answer in
  [yY]es )
    echo "\e[32m Setup Continue... \e[0m"
    if !(command -v ansible-playbook > dev/null 2>$1); then
      sudo apt install -y ansible
    fi

    ansible-playbook -i localhost, $SCRIPT_DIR/ansible/setup.yml -i ./$SCRIPT_DIR/inventories/local-dev.ini --ask-become-pass
    echo -e "\e[32m Complete \e[0m"
    ;;
  [nN]o )
    echo "\e[33m error: Setup Canceled \e[0m"
    exit 0
    ;;
  *)
    echo "\e[33m error: undefined keys \e[0m"
    exit 1
    ;;
esac
