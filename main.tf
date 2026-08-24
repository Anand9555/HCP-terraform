provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "one" {
  count                  = 3
  ami                    = "ami-0fb110df4c5094d21"
  instance_type          = "c7i-flex.large"
  key_name               = "jenkins"
  vpc_security_group_ids = ["sg-0515588a7d3f6103d"]
  tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
  default = ["jenkins", "tomcat-1", "Monitoring server"]
}

resource "aws_s3_bucket" "one" {
  bucket = "my-project-bucket-123456789"
  versioning {
    enabled = true
  }
}
