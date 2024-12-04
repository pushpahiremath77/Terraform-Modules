variable "vpc_id" {
  description = "The VPC ID where subnets will be created"
  type        = string
}

variable "az_1" {
  description = "The first availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "az_2" {
  description = "The second availability zone"
  type        = string
  default     = "us-east-1b"
}

variable "az_3" {
  description = "The third availability zone"
  type        = string
  default     = "us-east-1c"
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for the first public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for the second public subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for the first private subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for the second private subnet"
  type        = string
  default     = "10.0.4.0/24"
}

variable "public_subnet_1_name" {
  description = "Name for the first public subnet"
  type        = string
  default     = "public-subnet-1"
}

variable "public_subnet_2_name" {
  description = "Name for the second public subnet"
  type        = string
  default     = "public-subnet-2"
}

variable "private_subnet_1_name" {
  description = "Name for the first private subnet"
  type        = string
  default     = "private-subnet-1"
}

variable "private_subnet_2_name" {
  description = "Name for the second private subnet"
  type        = string
  default     = "private-subnet-2"
}
