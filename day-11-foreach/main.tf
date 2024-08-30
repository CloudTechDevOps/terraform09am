resource "aws_instance" "test" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "awsaws"
    for_each = toset(var.test)
    
  tags = {
    #Name = "dev-1"
    Name = each.value
    
  }
}

variable "test" {
    type = list(string)
    default = [ "dev","prod"]
  
}