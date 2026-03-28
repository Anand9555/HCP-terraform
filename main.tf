provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-077c6fac5ef663f46"
  instance_type = "t3.micro"

  tags = {
    Name = "ANAND-instance"
  }
}
