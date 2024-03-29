Ansible Role: Bloodymage.autonomy.bind
===============

- [Description](#description)
- [Installation](#installation)
- [Requirements](#requirements)
- [Usage](#usage)
- [Role Variables](#role-variables)
- [Features and Advantages](#features-and-advantages)
- [Similar Projects](#similar-projects)
- [References](#references)
- [Contributing](#contributing)
- [License](#license)
- [Author Information](#author-information)

Description
-----------
Installs Bind9 DNS Server

Installation
------------

### Requirements

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

### Dependencies
```
- role: bloodymage.autonomy.config_defaults
- role: bloodymage.autonomy.collection_handlers
```

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Usage
-----

### Role Variables

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

### Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - { role: bloodymage.autonomy.bind, x: 42 }

Features and Advantages
-----------------------

- Configures local bind9 servers to be a caching server of all root zones.
- 

Similar Projects
----------------
- [Bertvv: Bind Role](https://github.com/bertvv/ansible-role-bind)
- [Netzwirt: Bind Role](https://github.com/netzwirt/ansible-bind)

References
----------
- [BIND 9 Administrator Reference Manual](https://bind9.readthedocs.io/en/latest/)
- [DNS for Rocket Scientists](http://www.zytrax.com/books/dns/)
- [Debian Wiki: Bind9](https://wiki.debian.org/Bind9)
- [Samba Wiki: Setting up an BIND DNS Server](https://wiki.samba.org/index.php/Setting_up_a_BIND_DNS_Server)

Contributing
------------
[Contributing](CONTRIBUTING.md)

License
-------
[MIT](LICENSE.md)

Author Information
------------------
G Derber
gd.github@bloodymage.org
