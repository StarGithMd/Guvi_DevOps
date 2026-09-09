# outputs.tf

output "east_public_ip" {
  value = aws_instance.east_nginx.public_ip
}

output "west_public_ip" {
  value = aws_instance.west_nginx.public_ip
}

