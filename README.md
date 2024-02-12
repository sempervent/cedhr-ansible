# CEDHR Ansible Playbooks

Test bed for ansible playbooks for setting up a CEDHR environment.

## Description

This project uses Ansible playbooks to automate the setup of a CEDHR environment. The playbooks handle tasks such as cloning the necessary repositories and running Docker Compose.

## Prerequisites

- Ansible
- Docker
- SSH keys set up for each host

## Setup

Before running the playbook, you need to set up SSH keys for each host. You can do this using the `ssh-keygen` command. You also need to authenticate with Docker using your Docker username and password.

## Running the Playbook

1. Ensure that Ansible and Docker are installed on your system. If not, you can install them using the appropriate command for your system.
2. Navigate to the directory containing the playbook file.
3. Run the playbook using the following command:

```bash
ansible-playbook playbook.yaml
```

