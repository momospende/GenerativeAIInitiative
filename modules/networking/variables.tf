variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type = list(string)
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type = list(string)
}
