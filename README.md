# setup-automation.ansible

## Commands

```bash
// run all tasks
$ ./setup_automation.sh

// run individual tasks
$ ansible-galaxy collection install -r ansible-galaxy-requirements.yaml
$ ansible-playbook ansible/setup.yml --list-tasks  // list all tasks with tags
$ ansible-playbook ansible/setup.yaml --tags [some tags] --ask-become-pass // run some tasks
$ ansible-playbook ansible/setup.yaml --tags caps_to_crtl --ask-become-pass // for example...
```

## Global Variables

You can edit your specified variables in `ansible/vars.yml`.
It overrides local variables in each roles as follows.

```yaml
# ansible/nvidia-driver/defaults/main.yml

nvidia_autoinstall: true
nvidia_version: "460"
```

```yaml
# ansible/vars.yml

nvidia_autoinstall: false
nvidia_version: "460"
```

## Registered Tags

### For System Settings

- add_bash_settings: add somes settings to `.bash_aliases` and `.bashrc`
- user_dirs_english: Copy `user-dirs.dirs` to Change directory name to English
- disable_paste_middle_key: disable middle key paste for ThinkPad X1 Extreme
- nvidia_driver: Install nvidia driver. `nvidia_autoinstall` variable is enabled by default.
- swapfile: change swapfile size to your specified

### For Installing Software

- docker
- install_apt_pip: install packages of `apt_packages` and `pip_packages` variables
- nanorc: copy `.nanorc` to your home directory
- slack
- solaar
- tlp_powertop
- touchpad_indicator
