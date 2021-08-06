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
$ ansible-playbook setup.yml --list-tasks  // list all tasks with tags
$ ansible-playbook setup.yaml --tags [specified tags]  // run specified tasks
$ ansible-playbook setup.yaml --tags caps_to_crtl  // for example...
```

## Registered Tags

### System Settings

- caps_to_ctrl: change caps key to ctrl
- change_dir_jpn_to_en: Change Directory Japanese -> English
- disable_middle_key: disable middle key for ThinkPad X1 Extreme
- nvidia_driver: Install nvidia driver

### Software Instalation

- docker
- endpoint-verification
- google_chrome
- simplescreenrecorder
- solaar
- vscode
