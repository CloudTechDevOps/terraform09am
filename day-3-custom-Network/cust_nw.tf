#----------------------- custom network creation#--------------------
# Create VPC
resource "aws_vpc" "cust" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name="dev"
    }
  
}
# Create Internet gateway and aattch to vpc
resource "aws_internet_gateway" "cust" {
    vpc_id = aws_vpc.cust.id
  tags ={
    Name = "cust_ig"
  }
}
# Create subntes manam first subnet create cheyal
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.cust.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"
    tags = {
      Name ="cust_subnet"
    }
}
resource "aws_subnet" "private" {
    vpc_id = aws_vpc.cust.id
    cidr_block = "10.0.8.0/24"
    availability_zone = "us-east-1b"
    tags = {
      Name ="cust_subnet"
    }
}


# Create Route tables and attach to ig (edit routes)
resource "aws_route_table" "name" {
    vpc_id = aws_vpc.cust.id

route {
    gateway_id = aws_internet_gateway.cust.id
    cidr_block = "0.0.0.0/0"

}

}

# Subnet association add subnets into RT
resource "aws_route_table_association" "cust" {
    route_table_id = aws_route_table.name.id
    subnet_id = aws_subnet.public.id
    
}

# Create Securtit groups
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  vpc_id      = aws_vpc.cust.id
  tags = {
    Name = "dev_sg"
  }
 ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }


  }
