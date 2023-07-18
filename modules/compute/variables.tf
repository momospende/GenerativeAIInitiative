variable "instance_count" {
  description = "Number of instances to create"
  type        = map(string)
}

variable "ami_id" {
  description = "The ID of the AMI to use"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the VPC Subnet"
  type        = string
}

variable "name_prefix" {
  description = "The name to be used on all resources as prefix"
  type        = string
  default     = "tf"
}
