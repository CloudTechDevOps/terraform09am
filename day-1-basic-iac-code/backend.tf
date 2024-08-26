terraform {
  backend "s3" {
    bucket = "nareshawsdev"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}