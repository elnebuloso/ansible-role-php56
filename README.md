# Ansible Role - PHP 5.6 for Linux Server

[![Build Status](https://travis-ci.org/elnebuloso/ansible-role-php56.svg?branch=master)](https://travis-ci.org/elnebuloso/ansible-role-php56)

PHP 5.6 for Ubuntu Linux Server.

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```
php56_timezone: "Europe/Berlin"
```

the timezone to use by php

```
php56_modules_enabled:
  - php5-cli
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
```

the php modules to enable

```
php56_modules_disabled: []
```

the php modules to disable

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

##  License

MIT

##  Author Information

This role was created in 2016 by [elnebuloso](https://github.com/elnebuloso/)