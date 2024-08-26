resource "aws_instance" "dev" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "awsaws"
    tags = {
      Name = "EKs"
    }
}