resource "aws_security_group" "jenkins_sg" {
  name_prefix = "jenkins-sg-"
  description = "Security group for Jenkins"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

   tags = {
    Name = "jenkins-sg"
  } 
}

# Reference the security group created above in the Jenkins instance
resource "aws_instance" "jenkins" {
   ami           = var.ami_id  # Use the AMI variable here
  instance_type = var.instance_type
  subnet_id = var.public_subnet_id
  

  # Reference the security group
  security_groups = [aws_security_group.jenkins_sg.id]
  

   tags = {
    Name = "jenkins-instance"
  }
 
}

resource "aws_eip" "jenkins_ip" {
  instance = aws_instance.jenkins.id
}

