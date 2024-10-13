output "jenkins_public_ip" {
  value = aws_eip.jenkins_ip.public_ip
  description = "Public IP of the Jenkins server"
}
