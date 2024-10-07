output "instance_public_dns" {
  value = aws_instance.springboot_instance.public_dns
}
