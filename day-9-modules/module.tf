module "dev" {
    source = "../day-2-all.tf-files"
    ami_id = "ami-0ae8f15ae66fe8cda"
    instance_type ="t2.micro"
    key_name ="awsaws" 
    
}