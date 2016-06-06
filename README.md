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

# set this for using webserver
php56_webserver_enabled: true

# set this for the webserver types available: apache2
php56_webserver_type: "apache2"

# the hostname for the webserver to listen
php56_webserver_hostname: "box.entwickl.de"

# the hostname for the webserver to listen
php56_webserver_port: "80"

# vhost default
php56_webserver_vhost_default_enabled: true
php56_webserver_vhost_default_docroot: "/var/www"
php56_webserver_vhost_default_options: "Indexes FollowSymLinks"
php56_webserver_vhost_default_log_level: "warn"

# vhost builds
php56_webserver_vhost_builds_enabled: true
php56_webserver_vhost_builds_docroot: "/var/builds"
php56_webserver_vhost_builds_options: "Indexes FollowSymLinks"
php56_webserver_vhost_builds_log_level: "warn"

# vhost releases
php56_webserver_vhost_releases_enabled: true
php56_webserver_vhost_releases_docroot: "/var/releases"
php56_webserver_vhost_releases_options: "Indexes FollowSymLinks"
php56_webserver_vhost_releases_log_level: "warn"

# vhost dynamic
php56_webserver_vhost_dynamic_enabled: true
php56_webserver_vhost_dynamic_base: "/var/www"
php56_webserver_vhost_dynamic_docroot: "public"
php56_webserver_vhost_dynamic_options: "Indexes FollowSymLinks"
php56_webserver_vhost_dynamic_log_level: "warn"
php56_webserver_vhost_dynamic_env: "development"
```

## Example Playbook

```
- hosts: localhost
  roles:
    - { role: elnebuloso.php56 }
```

## Dependencies

None.

##  License

MIT

##  Author Information

This role was created in 2016 by [elnebuloso](https://github.com/elnebuloso/)