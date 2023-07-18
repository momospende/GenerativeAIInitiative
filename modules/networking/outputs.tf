output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = tolist([aws_subnet.public.id])
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = tolist([aws_subnet.private.id])
}
