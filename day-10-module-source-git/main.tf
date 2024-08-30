module "git" {
    source = "gitsource"
    ami_id = var.ami
    instance_type =var.type #here t2.micro will be inserted from terraform.tfvars
    key_name ="awsaws" 
}