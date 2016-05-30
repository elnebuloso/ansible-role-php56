# Ansible Role - PHP 5.6 for Linux Server

[![Build Status](https://travis-ci.org/elnebuloso/ansible-role-php56.svg?branch=master)](https://travis-ci.org/elnebuloso/ansible-role-php56)

PHP 5.6 for Linux Server.

## Requirements

This role requires Ansible 2.0 or higher, and platform requirements are listed in the metadata file.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```
# the timezone to use by php5
php56_timezone: "Europe/Berlin"

# optional php5 modules to enable
php56_modules_enabled:
  - php5-curl
  - php5-gd
  - php5-geoip
  - php5-imagick
  - php5-mcrypt
  - php5-memcached
  - php5-mongo
  - php5-mysql
  - php5-sqlite
  - php5-xdebug
  - php5-xsl

# optional php5 modules to disable
php56_modules_disabled: []
```

## Example Playbook

```
- hosts: localhost
  vars:
    php56_modules_enabled:
      - php5-cli
      - php5-mcrypt
      - php5-memcached
      - php5-mongo
      - php5-mysql
      - php5-sqlite
  roles:
    - { role: elnebuloso.php56 }
```

## Dependencies

None.

##  License

MIT

##  Author Information

This role was created in 2016 by [elnebuloso](https://github.com/elnebuloso/)