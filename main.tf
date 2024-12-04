terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "********************"
  secret_key = "********************"
}

module "my_vpc" {
  source   = "../Terraform/modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "ModuleVPC"

}

module "subnets" {
  source                   = "../Terraform/modules/subnets"
  vpc_id                   = module.my_vpc.vpc_id
  az_1                     = "us-east-1a"  # Public subnet 1
  az_2                     = "us-east-1b"  # Public subnet 2 and Private subnet 1
  az_3                     = "us-east-1c"  # Private subnet 2
  public_subnet_1_cidr     = "10.0.1.0/24"
  public_subnet_2_cidr     = "10.0.2.0/24"
  private_subnet_1_cidr    = "10.0.3.0/24"
  private_subnet_2_cidr    = "10.0.4.0/24"
  public_subnet_1_name     = "public-module-1"
  public_subnet_2_name     = "public-module-2"
  private_subnet_1_name    = "private-module-1"
  private_subnet_2_name    = "private-module-2"
}


module "internet_gateway" {
  source  = "../Terraform/modules/internet-gateway"
  vpc_id  = module.my_vpc.vpc_id
  igw_name = "Module-igw"
}
