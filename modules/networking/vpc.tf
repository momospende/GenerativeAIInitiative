resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "public" {
  for_each = { for idx, cidr in var.public_subnet_cidr : "public_subnet_${idx + 1}" => cidr }

  vpc_id     = aws_vpc.main.id
  cidr_block = each.value
}

resource "aws_subnet" "private" {
  for_each = { for idx, cidr in var.private_subnet_cidr : "private_subnet_${idx + 1}" => cidr }

  vpc_id     = aws_vpc.main.id
  cidr_block = each.value
}

