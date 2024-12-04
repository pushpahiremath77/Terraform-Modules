
variable "vpc_id" {
  description = "VPC to attach the Internet Gateway"
  type        = string
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
  default     = "module-internet-gateway"
}
