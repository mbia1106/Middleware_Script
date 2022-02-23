#!/bin/bash

#Description: installing Sonarqube packages
# Author: Group 5, Feb 22 2022

echo "Let's install Sonarqube packages"
sleep 2

yum update -y
yum install java-11-openjdk-devel -y
yum install java-11-openjdk -y
yum install wget -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
yum install unzip -y
unzip /opt/sonarqube-9.3.0.51899.zip
chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
./sonar.sh start

echo "Installation was successful"~
