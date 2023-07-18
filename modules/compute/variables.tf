variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
}

variable "name_prefix" {
  description = "Name prefix for resources"
}

variable "instance_count" {
  description = "Number of instances to create"
  type = map(string)
}
