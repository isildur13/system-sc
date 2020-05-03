#!/bin/bash

echo -e "root\nroot" | passwd root
echo -en "\n\n" | ssh-keygen
apt install ssh -y
sed -i -e 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' -e 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
cat /etc/ssh/sshd_config
echo "------------______RESTARTING SSHD_____--------------"
systemctl restart sshd ssh
apt-get update
timedatectl set-ntp true
systemctl status systemd-timesyncd
apt install python -y

apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update -y

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

docker run hello-world

