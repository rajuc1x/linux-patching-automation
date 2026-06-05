# linux-patching-automation
Automated Linux OS patching using Ansible with safe reboot and zero-downtime strategy

# kubeops-automation

Ansible-based automation for Linux OS patching and infrastructure operations.

## Structure
- inventory/ : server inventory
- playbooks/ : automation logic
- ansible.cfg : Ansible configuration

## Run
ansible-playbook playbooks/patch-servers.yml
