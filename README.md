# Ansible Role - PHP 5.6 for Linux Server

[![Build Status](https://travis-ci.org/elnebuloso/ansible-role-php56.svg?branch=master)](https://travis-ci.org/elnebuloso/ansible-role-php56)

## Requirements

No special requirements; note that this role requires root access, so either run it in a playbook with a global `become: yes`, or invoke the role in your playbook like:

```
- hosts: localhost
  roles:
    - role: elnebuloso.php56
      become: yes
```

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```
php56_timezone: "Europe/Berlin"
```

The PHP Timezone to use.

```
php56_modules:
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

The PHP Modules to load.

## Example Playbook

```
- hosts: localhost
  vars:
    php56_modules:
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
  roles:
    - { role: elnebuloso.php56 }
```

##  License

MIT

##  Author Information

This role was created in 2014 by [elnebuloso](https://github.com/elnebuloso/)