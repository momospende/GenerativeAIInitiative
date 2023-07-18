variable "region" {
  description = "AWS Region"
  default     = "eu-central-1"
}

variable "ami_id" {
  description = "AMI ID"
  default     = "ami-0abcdef1234567890" # replace with your actual AMI ID
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = ["10.0.1.0/24"]
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = ["10.0.2.0/24"]
}

variable "name_prefix" {
  description = "Name prefix for instances"
  default     = "genai"
}

variable "instance_count" {
  description = "Number of instances"
  default     = 2
}
