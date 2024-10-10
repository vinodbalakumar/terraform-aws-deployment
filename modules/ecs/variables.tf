variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default = "vpc-03a1d6956b5aead3a"
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "execution_role_arn" {
  description = "IAM role for ECS task execution"
  type        = string
  default = "arn:aws:iam::acc:role/vinod"
}

variable "task_role_arn" {
  description = "IAM role for the ECS task"
  type        = string
  default = "arn:aws:iam::acc:role/vinod"
}

variable "ami_id" {
  description = "The AMI ID to use for the Jenkins instance"
  type        = string
  default = "ami-0866a3c8686eaeeba"
}