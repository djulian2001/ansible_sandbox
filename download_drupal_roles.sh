#!/bin/bash

ansible-galaxy install --roles-path ./roles geerlingguy.apache
ansible-galaxy install --roles-path ./roles geerlingguy.mysql
ansible-galaxy install --roles-path ./roles geerlingguy.php
ansible-galaxy install --roles-path ./roles geerlingguy.php-mysql
ansible-galaxy install --roles-path ./roles geerlingguy.composer
ansible-galaxy install --roles-path ./roles geerlingguy.drush
ansible-galaxy install --roles-path ./roles geerlingguy.drupal
ansible-galaxy install --roles-path ./roles geerlingguy.docker
