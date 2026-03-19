Ansible Role: Bloodymage.autonomy.openssh
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
Installs OpenSSH server

Installation
------------

### Requirements

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

### Dependencies
```
- role: bloodymage.autonomy.collection_handlers
```

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Usage
-----

### Role Variables

#### SSH Client Config Variables

##### autonomy_openssh_ssh_conf_ciphers

Specifies the ciphers allowed and their order of preference.

Supported Ciphers:
  - 3des-cbc
  - aes128-cbc
  - aes192-cbc
  - aes256-cbc
  - aes128-ctr
  - aes192-ctr
  - aes256-ctr
  - aes128-gcm@openssh.com
  - aes256-gcm@openssh.com
  - chacha20-poly1305@openssh.com

Default Ciphers:
  - chacha20-poly1305@openssh.com
  - aes128-gcm@openssh.com
  - aes256-gcm@openssh.com
  - aes128-ctr
  - aes192-ctr
  - aes256-ctr

### Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - { role: bloodymage.autonomy.openssh, x: 42 }

Features and Advantages
-----------------------


Similar Projects
----------------

References
----------

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
