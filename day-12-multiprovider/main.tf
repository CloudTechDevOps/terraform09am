provider "aws" {
    region = "us-east-1"
  
}

provider "aws" {
    region = "ap-south-1"
    alias = "us"
  
}
resource "aws_s3_bucket" "us" {
    bucket = "gavxgxvjhbcjh"
    provider = aws.us
  
}

resource "aws_s3_bucket" "mumbai" {
    bucket = "jshxsjxkjsx"
  
}