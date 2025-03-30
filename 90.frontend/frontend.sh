#!/bin/bash

component=$1
environment=$2
echo "Component: $component, Environment: $environment"
dnf install ansible -y
ansible-pull -i localhost, -U https://github.com/vijaya294/expense-ansible-roles.git main.yaml -e component=$component -e environment=$environment