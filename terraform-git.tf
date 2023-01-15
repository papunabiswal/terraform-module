terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA5CZTULS3Q6V2FIOY"
  secret_key = "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"
}

# resource "aws_instance" "terra-git" {
#   ami           = "ami-0cca134ec43cf708f"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "terraform-git"
#   }
# }

resource "aws_default_vpc" "new" {
  tags = {
    Name = "papu"
  }
}

