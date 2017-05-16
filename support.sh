#!/bin/bash

# sudo adduser 'newuser' X 4
  sudo adduser julian
  sudo adduser melroy
  sudo adduser terry
  sudo adduser dalia

#copy pre created folder/file with public key to respective user
cp /resources/julian/authorized_keys /home/julian/.ssh/authorized_keys
cp /resources/melroy/authorized_keys /home/melroy/.ssh/authorized_keys
cp /resources/terry/authorized_keys /home/terry/.ssh/authorized_keys
cp /resources/dalia/authorized_keys /home/dalia/.ssh/authorized_keys

#Change file / folder permissions
chmod 700 /home/julian
chmod 655 /home/julian/.ssh
chmod 655 /home/julian/.ssh/*

chmod 700 /home/melroy
chmod 655 /home/melroy/.ssh
chmod 655 /home/melroy/.ssh/*

chmod 700 /home/terry
chmod 655 /home/terry/.ssh
chmod 655 /home/terry/.ssh/*

chmod 700 /home/dalia
chmod 655 /home/dalia/.ssh
chmod 655 /home/dalia/.ssh/*

#uncomment line 99 %wheel	ALL=(ALL)	NOPASSWD: ALL
sed -i '/#%wheel/s/^#//g' /etc/sudoers
