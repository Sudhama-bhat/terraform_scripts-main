provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  for_each = toset(["Sudhama-1", "Sudhama-2", "Sudhama-3"])

  ami           = "ami-02f624c08a83ca16f"
  instance_type = "t2.micro"
  key_name      = "Dhama-server"

  tags = {
    Name = each.key
  }
}
