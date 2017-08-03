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

End Point:
----------
This is the systems spec sheet that will 
Short Summary
-------------
	• 5 server sandbox on XEN
	• All CentOS 7.3 - updated 5/26/17
	• Asurite auth configured on controller node  (requires fortinet vpn to access)
		○ As deployed SSH as root is allowable
		○ Iptables (firewall) is not running or enabled
	• DHCP network is non-routable, intended for ansible management traffic only
	• VLAN 3095 address routable:
		○ Default gateway = 10.107.22.1
		○ Netmask = 255.255.255.0
		○ DNS1 = 10.107.28.14
		○ DNS2 = 129.219.17.5
	
network details:
----------------

	Role        Hostname	Eth0	        Eth1	                notes
	------------------------------------------------------------------------------------------------
	controller  ACN01	    172.16.3.5/24	10.107.22.76 VLAN 3095	Dhcp server Pool : 172.16.3.10-100/24
	Target 	    ACT01	    Dhcp VLAN 203	10.107.22.77	        Eth1 reserved but not assigned
	Target 	    ACT02	    Dhcp VLAN 203	10.107.22.78	        Eth1 reserved but not assigned
	Target 	    ACT03	    Dhcp VLAN 203	10.107.22.79	        Eth1 reserved but not assigned
	Target 	    ACT04	    Dhcp VLAN 203	10.107.22.80	        Eth1 reserved but not assigned
 
dhcp assignments:
-----------------
	[act02] remote host: 172.16.3.12
	[act01] remote host: 172.16.3.10
	[act04] remote host: 172.16.3.13
	[act03] remote host: 172.16.3.11
