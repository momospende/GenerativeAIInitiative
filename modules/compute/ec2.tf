resource "aws_instance" "example" {
  for_each      = { "example-instance" : var.instance_type }
  ami           = var.ami_id
  instance_type = each.value
}
