module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-0ae8f15ae66fe8cda"
  instance_type          = "t2.micro"
  key_name               = "awsaws"
  monitoring             = true
#   vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-0f087760bbe683520"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
}