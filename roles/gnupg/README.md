GnuPG
=========

Installs and configures global settings for GnuPG

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

Two servers are known to allow deleting gpg keys.
```
autonomy_gnupg_keyservers:
  - name: "hkps://keys.openpgp.org"
    options: []
  - name: "hkps://keys.mailvelope.com"
    options: []
```

Other servers include:
- hkp://keys.gnupg.net
- hkp://keyserver.ubuntu.com
- hkp://keyserver.debian.org

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
