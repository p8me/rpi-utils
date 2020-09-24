# rpi-utils

## Steps

1. `chmod -u+x ./enable_root_ssh.sh ./set_host_name.sh`
1. `./enable_root_ssh.sh`
1. `./set_host_name.sh rpi`
1. `passwd`
1. `reboot now`

Add host to trusted users:
1. `ssh-keygen`
1. `cat ~/.ssh/id_rsa.pub | ssh root@rpi 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys'`
