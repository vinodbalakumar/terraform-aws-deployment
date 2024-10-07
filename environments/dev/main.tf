provider "aws" {
  region = var.region
}

resource "aws_vpc" "springboot_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "springboot_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.app_sg.name]
  
  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo amazon-linux-extras install java-openjdk11 -y
            java -jar /path/to/your/app.jar
            EOF
}

output "instance_public_dns" {
  value = aws_instance.springboot_instance.public_dns
}
