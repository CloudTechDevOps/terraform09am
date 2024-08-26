resource "aws_instance" "dev" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "awsaws"
    tags = {
      Name = "EKs"
    }
}

#command terraform import aws_instance.dev i-0e3f670f4ee619528
