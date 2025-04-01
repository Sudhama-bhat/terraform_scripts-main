resource "aws_vpc" "sudhama_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "Sudhama-vpc"
  }
}

resource "aws_subnet" "sudhama_subnet" {
  vpc_id            = aws_vpc.sudhama_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "Sudhama-subnet"
  }
}
