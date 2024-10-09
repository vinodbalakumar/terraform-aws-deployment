provider "aws" {
  region = "us-east-1"
}


module "vpc" {
  source = "../../modules/vpc"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
}

module "jenkins" {
  source = "../../modules/jenkins"
  ami              = var.ami_id
  instance_type    = var.instance_type
  vpc_id           = module.vpc.vpc_id
  public_subnet_id = module.vpc.public_subnet_id
}

module "ecs" {
  source = "../../modules/ecs"
  vpc_id   = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_id
  execution_role_arn = "arn:aws:iam::203918889186:role/vinod"
  task_role_arn = "arn:aws:iam::203918889186:role/vinod"
}


