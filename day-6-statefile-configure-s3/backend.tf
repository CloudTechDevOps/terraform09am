terraform {
  backend "s3" {
    bucket = "nareshawsdev"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}