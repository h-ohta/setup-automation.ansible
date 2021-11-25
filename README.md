# setup-automation.ansible

## Commands
```
// run all tasks
$ ./setup_automation.sh

// run individual tasks
$ ansible-playbook ansible/setup.yml --list-tasks  // list all tasks with tags
$ ansible-playbook ansible/setup.yaml --tags [some tags] --ask-become-pass // run some tasks
$ ansible-playbook ansible/setup.yaml --tags caps_to_crtl --ask-become-pass // for example...
```

## Global Variables
You can edit your specified variables in `ansible/vars.yml`.
It overrides local variables in each roles as follows.

``` yaml
# ansible/nvidia-driver/defaults/main.yml
---
nvidia_autoinstall: true
nvidia_version: "460"
```

``` yaml
# ansible/vars.yml
...
nvidia_autoinstall: false
nvidia_version: "470"
...
```

## Registered Tags

### For System Settings

- caps-to-ctrl: change caps key to ctrl
- xdg-user-dirs-update-lang-c: Change Directory Japanese -> English
- disable-paste-middle-key: disable middle key paste for ThinkPad X1 Extreme
- nvidia-driver: Install nvidia driver. `nvidia_autoinstall` variable is enabled by default.
- swapfile: change swapfile size to your specified

### For Installing Software

- docker
- endpoint-verification
- git-common: install and add `git_config_items` to .gitconfig
- google-chrome
- install-apt-pip: install packages of `apt_packages` and `pip_packages` variables
- nanorc: locate `.nanorc` to your home directory
- simplescreenrecorder
- slack
- solaar
- tlp-powertop
- touchpad-indicator
- vscode
