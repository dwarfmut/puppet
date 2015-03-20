puppet-fail2ban
======

Puppet module for fail2ban configuration.

#### Table of Contents
1. [Overview - What is the fail2ban module?](#overview)

Overview
--------

This module is intended to be used to manage the fail2ban configurations.

Parameters
----------

**Configuration**
```
class { fail2ban: }
```

* **bantime**: banning time, in seconds
* **findtime**: the counter is set to zero if no match is found within "findtime" seconds
* **maxretry**: number of matches (i.e. value of the counter) which triggers ban action on the IP
* **jails**: list of jails to configure, currently supported jails are imap, pop3, ssh, vsftpd
* **mailto**: mail address to send notifications

Usage
-----

### Examples

This is a simple example to configure fail2ban with an SSH jail.

**Using the fail2ban ssh jail**

```fail2ban
class { 'fail2ban':
    jails  => ['ssh'],
    mailto => 'root@example.com',
}
```

Contributors
------------

* https://github.com/desalvo/puppet-fail2ban/graphs/contributors

Release Notes
-------------

**0.1.2**

* Add bantime, findtime and maxretry parameters

**0.1.0**

* Initial version
