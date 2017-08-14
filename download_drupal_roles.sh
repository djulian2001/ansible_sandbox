#!/bin/bash

ansible-galaxy install --roles-path ./roles/galaxy geerlingguy.apache
ansible-galaxy install --roles-path ./roles/galaxy geerlingguy.mysql
ansible-galaxy install --roles-path ./roles/galaxy geerlingguy.php
ansible-galaxy install --roles-path ./roles/galaxy geerlingguy.php-mysql
ansible-galaxy install --roles-path ./roles/galaxy geerlingguy.composer
ansible-galaxy install --roles-path ./roles/galaxy geerlingguy.drush
ansible-galaxy install --roles-path ./roles/galaxy geerlingguy.drupal
ansible-galaxy install --roles-path ./roles/galaxy geerlingguy.docker
