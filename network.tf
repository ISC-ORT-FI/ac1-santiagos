resource "aws_vpc" "vpc-ac1" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "terraform-vpc-ac1"
  }
}

resource "aws_subnet" "ac1-private-subnet" {
  vpc_id                  = aws_vpc.vpc-ac1.id
  cidr_block              = "172.16.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "terraform-ac1-private-subnet"
  }
}

resource "aws_subnet" "ac1-private-subnet-2" {
  vpc_id                  = aws_vpc.vpc-ac1.id
  cidr_block              = "172.16.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "terraform-ac1-private-subnet-2"
  }
}
resource "aws_internet_gateway" "ac1-gw" {
  vpc_id = aws_vpc.vpc-ac1.id
  tags = {
    Name = "terraform-ac1-gw"
  }
}

resource "aws_default_route_table" "ac1-route-table" {
  default_route_table_id = aws_vpc.vpc-ac1.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ac1-gw.id
  }
  tags = {
    Name = "default route table"
  }
}