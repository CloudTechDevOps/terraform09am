#example with numeric condition in thid condition if ec2 instance = t2.micro only instance will create(count = var.instance_type == "t2.micro" ? 1 : 0) but i am passing t2.nano so ec2 will not create
#variables.tf
variable "ami" {
  type    = string
  default = "ami-0ae8f15ae66fe8cda"
}

variable "instance_type" {
  type = string
  default = "t2.nano"
}

# main.tf
resource "aws_instance" "dev" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_type == "t2.micro" ? 1 : 0
  tags = {
    Name = "dev_server"
  }
}



