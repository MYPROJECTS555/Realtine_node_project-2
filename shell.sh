#!/bin/bash

set -x

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo                          ## this scrip will createthe new repo in local
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key   ## this script is import the packge using link path
sudo yum -y  upgrade
# Add required dependencies for the jenkins package
sudo yum install -y  java-17
sudo yum install -y jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins # during rebot jenkins application should be up
sudo systemctl start jenkins
