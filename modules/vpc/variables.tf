variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "aws_availability_zone" {
  description = "CIDR block for the public subnet"
  type        = string
  default = "us-east-1a"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "jenkins-vpc"
}