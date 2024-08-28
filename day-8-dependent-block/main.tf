resource "aws_instance" "dependent" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    key_name = "awsaws"
    depends_on = [ aws_s3_bucket.dependent ]
}

resource "aws_s3_bucket" "dependent" {
    bucket = "s3nareshtadffrget"
   
}
