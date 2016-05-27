# Ansible Role - PHP 5.6

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
server_base_timezone: "Europe/Berlin"
```

The Timezone use by PHP.

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

The Default Apache2 Modules to load.

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