#!/bin/bash
: '
Enables and allows root ssh
WARNING: REMOTE ROOT ACCESS IS NOT RECOMMENDED FOR SECURITY REASONS!
'

systemctl enable ssh
sed -i -E 's/(#)?PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config
service sshd restart
