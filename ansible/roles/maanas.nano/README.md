# Ansible Role: Nano

[![Build Status](https://travis-ci.org/maanas/ansible-role-nano.svg?branch=master)](https://travis-ci.org/maanas/ansible-role-nano)

Installs Nano, Nano's ANOther editor, an enhanced free Pico clone, on any RHEL/CentOS or Debian/Ubuntu Linux system.

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

    workspace: /root

Where certain files will be downloaded and adjusted prior to git installation, if needed.

    nano_enablerepo: ""

This variable, a well as `nano_packages`, will be used to install nano via a particular `yum` repo. Any additional repositories you have installed that you would like to use for a newer/different Nano version.

    nano_packages:
      - nano

The specific Nano packages that will be installed. By default, nothing is included, but you can easily add this variable to your playbook's variables if desired.

    
## Dependencies

None.

## Example Playbook

    - hosts: servers
      roles:
        - { role: maanas.nano }

## License

MIT / BSD

## Author Information

This role was based on ansible-role-git by [Jeff Geerling](https://github.com/geerlingguy/ansible-role-git/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).


