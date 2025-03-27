provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = ["../.secrets/credentials"]
  profile                  = "Haykein-tp6"
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-dieudonne"
    key    = "dieudonne-prod.tfstate"
    region = "us-east-1"
     shared_credentials_files = ["../.secrets/credentials"]
     profile                  = "Haykein-tp6"
  }
}

module "ec2" {
  source = "../modules/ec2module"
  instancetype = "t2.micro"
aws_common_tag = {
  Name = "ec2-prod-dieudonne"
}

sg_name = "prod-dieudonne-sg"


}