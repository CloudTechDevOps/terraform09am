variable "ami" {
    description = "inserting ami values to main.tf"
    type = string
    default = "ami-0ae8f15ae66fe8cda"
  
}

variable "type" {
    description = "inserting instance type to main.tf"
    type = string
    default = "t2.micro"
  
}
variable "key" {
    type = string
    default = "aws_key"
  
}
