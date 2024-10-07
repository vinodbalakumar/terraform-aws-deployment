provider "aws" {
  region = var.aws_region
}

module "jenkins_vpc" {
  source = "../../modules/vpc"
  # Add necessary variables
}

module "jenkins_sg" {
  source = "../../modules/security_group"
  # Add necessary variables
}

module "jenkins_ec2" {
  source = "../../modules/ec2"

  name          = "jenkins-server-dev"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  security_group_ids = [module.jenkins_sg.security_group_id]

  user_data = file("../../scripts/install_jenkins.sh")

  tags = {
    Environment = "dev"
  }
}