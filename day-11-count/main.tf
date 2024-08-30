resource "aws_instance" "test" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "awsaws"
    count = length(var.test) #it will print 3
    
  tags = {
    #Name = "dev-1"
    #Name = "web-${count.index}"
    Name= var.test[count.index]
  }
}

variable "test" {
    type = list(string)
    default = [ "dev","prod"]
  
}