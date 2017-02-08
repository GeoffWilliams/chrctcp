[![Build Status](https://travis-ci.org/GeoffWilliams/chrctcp.svg?branch=master)](https://travis-ci.org/GeoffWilliams/chrctcp)
# chrctcp

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with chrctcp](#setup)
    * [What chrctcp affects](#what-chrctcp-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with chrctcp](#beginning-with-chrctcp)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Manage services in `/etc/rc.tcpip` with `chrctcp` on AIX, protect `chrctcp` from running unnecessarily by protecting with `awk`

## Usage

### Disabling services
```puppet
chrctcp { "hostmibd":
  ensure => "disabled",
}
```
Disable the `hostmidb` service

### Disabling and stopping services
```puppet
chrctcp { "hostmibd":
  ensure          => "disabled",
  refresh_service => true,
}
```
Disable and stop the `hostmidb` service

### Enabling services
```puppet
chrctcp { "hostmibd":
  ensure => "enabled",
}
```
Enable the `hostmidb` service

### Enabling and starting services
```puppet
chrctcp { "hostmibd":
  ensure          => "enabled",
  refresh_service => true,
}
```
Enable and start the `hostmidb` service

## Reference

### Defined types
* chrctcp - manage services using chrctcp

## Limitations

* AIX only
* Not supported by Puppet, inc.

## Development

PRs accepted :)

## Testing
This module supports testing using [PDQTest](https://github.com/GeoffWilliams/pdqtest).


Test can be executed with:

```
bundle install
bundle exec pdqtest all
```


See `.travis.yml` for a working CI example
