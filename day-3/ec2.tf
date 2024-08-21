# Launch Instance 
resource "aws_instance" "prod" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.nano"
    key_name = "aws_key"
    subnet_id = aws_subnet.public.id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = {
      Name = "myec2"
    }
    
  
}
