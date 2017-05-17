#!/bin/bash

# sudo adduser 'newuser' X 4
  sudo adduser julian
  sudo adduser melroy
  sudo adduser terry
  sudo adduser dalia

#Add users to wheel group
  usermod -aG wheel julian
  usermod -aG wheel melroy
  usermod -aG wheel terry
  usermod -aG wheel dalia

#create .ssh folder
sudo mkdir /home/julian/.ssh
sudo mkdir /home/melroy/.ssh
sudo mkdir /home/terry/.ssh
sudo mkdir /home/dalia/.ssh

#copy pre created folder/file with public key to respective user
sudo cp ./julian/authorized_keys /home/julian/.ssh/authorized_keys
sudo cp ./melroy/authorized_keys /home/melroy/.ssh/authorized_keys
sudo cp ./terry/authorized_keys /home/terry/.ssh/authorized_keys
sudo cp ./dalia/authorized_keys /home/dalia/.ssh/authorized_keys

#Change file / folder permissions
sudo chmod 700 /home/julian
sudo chmod 655 /home/julian/.ssh
sudo chmod 655 /home/julian/.ssh/*

sudo chmod 700 /home/melroy
sudo chmod 655 /home/melroy/.ssh
sudo chmod 655 /home/melroy/.ssh/*

sudo chmod 700 /home/terry
sudo chmod 655 /home/terry/.ssh
sudo chmod 655 /home/terry/.ssh/*

sudo chmod 700 /home/dalia
sudo chmod 655 /home/dalia/.ssh
sudo chmod 655 /home/dalia/.ssh/*

#uncomment line 99 %wheel	ALL=(ALL)	NOPASSWD: ALL
sed -i '/#%wheel/s/^#//g' /etc/sudoers
