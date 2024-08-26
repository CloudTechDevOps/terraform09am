output "publicip" {
    value = aws_instance.dev.public_ip
    description = "printing the public ip"
  
  
}
output "privateip" {
    value = aws_instance.dev.private_ip
    sensitive = true
  
}