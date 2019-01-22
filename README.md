Bootstrapper Kit (Project Status: Alpha)
========================================

This project is an attempt at making onboarding teammates onto an Ansible
project way easier by Dockerizing dependencies and reducing workstation requirements.
It also provides a way to securely share Ansible Vault password files via
1Password.


Requirements
------------

1. Bash
2. Docker CE/EE
3. Make


Usage
-----

Run it with

```
script/configure /path/to/cluster/config/dir
```

NOTE: There's a sample cluster config dir at
[https://github.com/relaxdiego/bootstrapper-sample-clusters](https://github.com/relaxdiego/bootstrapper-sample-clusters)

The above command will build the necessary Docker images, initialize your
Ansible Vault password and file and also upload the password file to your
1password.com account.

You may edit your vault using the following command

```
script/edit-vault /path/to/cluster/config/dir
```

For more information, visit [relaxdiego.com](https://relaxdiego.com)
