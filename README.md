rc_ansible_sandbox
==================
[RCPM-25] Create Ansible plays, roles, playbooks: follow tasks outlined in story

Tasks on targets via automation
-------------------------------
    • Change hostnames 
    • Disable SELINUX and reboot 
    • Configure Eth1 interfaces and have them active on boot 
    • Ping gateway (10.107.22.1) 
    • Install firefox via yum 
    • Disable PermitRootLogin in /etc/ssh/sshd_config 
      ○ By this time the deployment user is tested and working well 

Tasks on targets via automation (Advanced) 
-------------------------------
    • Deploy Drupal CMS using 2 nodes 
      ○ Although these nodes are CentOS 7 feel free to deploy docker, or whatever, via automation on the target nodes and containerize the apps and or db as you please 
      ○ The final product should restrict database access to the private VLAN 203 only 
      ○ Webserver will present content on the public VLAN 3095 interface via 80 and/or 443 
