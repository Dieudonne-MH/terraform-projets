terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.65.0"
    }
  }
  required_version = "1.11.2"
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "myec2" {
  ami = "ami-026ebd4cfe2c043b2"
  instance_type = "t2.micro"
  key_name = "devops-Dieudonne"
  tags = {
    Name = "ec2-Dieudonne-tp2"
  }

  root_block_device {
    delete_on_termination = true
  }
}