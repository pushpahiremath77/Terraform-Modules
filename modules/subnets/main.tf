
resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_1_cidr
  availability_zone       = var.az_1
  map_public_ip_on_launch = true
  tags = {
    Name = var.public_subnet_1_name
  }
}


resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_2_cidr
  availability_zone       = var.az_2
  map_public_ip_on_launch = true
  tags = {
    Name = var.public_subnet_2_name
  }
}


resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.private_subnet_1_cidr
  availability_zone       = var.az_2
  tags = {
    Name = var.private_subnet_1_name
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.private_subnet_2_cidr
  availability_zone       = var.az_3
  tags = {
    Name = var.private_subnet_2_name
  }
}

