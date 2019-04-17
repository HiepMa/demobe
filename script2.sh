#!/bin/bash
echo "                  1. Add SSH "
mkdir -p /root/.ssh/
cat << EOF > /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDANXW1NsDxlnQgbjvj6YmL1xfUXvX/ygnXb2XXOVfPuUGIPSJh18TEb+ie5AZJ707AmnICZmQlrxJOCTI8R5mwggRZ+oO5qZtRohf54hrmfJdHRkQbN7F7LEyr8QQ3FY7at7fmaH6xrxDtQdZnDnpXybMQEw29S9cOFEHQErE/qpkO5N/u8vp0VkwHteSgCSMcCsXhX+3CDgQ15Ooo3gMnh8Z6dqPOU+wIRELqZDrlwZ7q3Jy1YNJL0Yit8OIIv7TQtCPUx/J3w2VPnJv7pR+cBhzDMRIz6rqBhbgC+OsqoDdam8oT2rAMZ4+4b4OWywSaF2IKiGWBLLZBepd0c3vx imported-openssh-key
EOF

echo "                  2. Export                      "
export http_proxy=http://192.168.82.109:8888

echo "                  3. update    "
apt-get update
apt-get install wget -y

echo "                  4. Install Dokku"
wget https://raw.githubusercontent.com/dokku/dokku/v0.15.3/bootstrap.sh;
DOKKU_TAG=v0.15.3 bash bootstrap.sh

echo "                  5. Docker           "
apt-get purge docker lxc-docker docker-engine docker.io
apt-get install  curl  apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce -y

echo "                  6. Dos2unix "
apt-get install dos2unix -y
