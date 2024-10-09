variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the Jenkins EC2 instance"
  type        = string
  default     = "ami-0866a3c8686eaeeba"  # Replace with a valid Ubuntu AMI ID for your region
}


variable "name" {
  description = "Name for the EC2 instance"
  type        = string
  default = "vinod"
}

variable "user_data" {
  description = "User data for the EC2 instance"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags for the EC2 instance"
  type        = map(string)
  default     = {}
}

variable "key_name" {
  description = "Key Pair name for the EC2 instance"
  default = "aws_login"
  
}

variable "execution_role_arn" {
  description = "IAM role for ECS task execution"
  type        = string
  default = "arn:aws:iam::203918889186:role/vinod"
}

variable "task_role_arn" {
  description = "IAM role for the ECS task"
  type        = string
  default = "arn:aws:iam::203918889186:role/vinod"
}
