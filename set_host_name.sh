#!/bin/bash
: '
Sets the hostname on linux
Example usage:
	setHostName rpi
'

host_name=$1
sed -i -E 's/^127.0.1.1.*/127.0.1.1\t'"$host_name"'/' /etc/hosts
echo $host_name | tee /etc/hostname
hostnamectl set-hostname $host_name
systemctl restart avahi-daemon
