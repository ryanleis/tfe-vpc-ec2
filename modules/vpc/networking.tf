resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy

  tags = {
    name = "main"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  
  tags = {
    Name = "Main"
  }
}
output "vpc_id" {
  value = "${aws_vpc.main.id}"
}
output "subnet_id" {
  value = "${aws_subnet.subnet1.id}"
}

