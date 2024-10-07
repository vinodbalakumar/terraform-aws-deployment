#!/bin/bash

# Update and install dependencies
sudo yum update -y
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install -y docker git

# Start Docker service
sudo service docker start
sudo usermod -a -G docker ec2-user

# Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Install Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

# Install AWS CLI
sudo yum install -y aws-cli