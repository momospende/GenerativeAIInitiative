resource "aws_instance" "example" {
  for_each = var.instance_count

  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "${var.name_prefix}-${each.key}"
  }
}
