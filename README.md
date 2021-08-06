# setup-automation.ansible

## Compatible OS
- Ubuntu20.04

## Global Arguments（./ansible/vars.yaml）
- ARCH: CPU Architecture
- NVIDIA_VERSION: nvidiaドライバのバージョン

## Commands
```
// run all tasks
$ ./setup_automation.sh

// run individual tasks
$ ansible-playbook ansible/setup.yml --list-tasks  // list all tasks with tags
$ ansible-playbook ansible/setup.yaml --tags [specified tags] --ask-become-pass // run specified tasks
$ ansible-playbook ansible/setup.yaml --tags caps_to_crtl --ask-become-pass // for example...
```

## Registered Tags

### System Settings

- caps-to-ctrl: change caps key to ctrl
- chdir-to-en: Change Directory Japanese -> English
- disable-middle-key: disable middle key for ThinkPad X1 Extreme
- nvidia-driver: Install nvidia driver

### Software Instalation

- docker
- endpoint-verification
- google-chrome
- simplescreenrecorder
- solaar
- vscode
