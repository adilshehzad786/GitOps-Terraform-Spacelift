terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "spacelift"
}

resource "aws_instance" "new_aws_instance"{
    ami = var.ami
    instance_type = var.instance_type
}
