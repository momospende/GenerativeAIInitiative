output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = [for s in aws_subnet.public : s.id]
}
