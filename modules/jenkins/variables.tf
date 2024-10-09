variable "ami" {
  description = "AMI ID for the Jenkins EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for Jenkins"
  type        = string
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default = "vpc-0eb57045f56ff2ff7"
}

variable "public_subnet_id" {
  description = "Public Subnet ID"
  type        = string
}


variable "ami_id" {
  description = "AMI ID for the Jenkins EC2 instance"
  type        = string
  default     = "ami-0866a3c8686eaeeba"  # Replace with a valid Ubuntu AMI ID for your region
}