provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 1
  ami           = "ami-077c6fac5ef663f46"
  instance_type = "t3.micro"
  tags = {
    Name = "dev-server-${count.index+1}"
  }
}
